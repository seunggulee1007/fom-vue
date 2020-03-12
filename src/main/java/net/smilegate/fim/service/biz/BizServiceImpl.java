package net.smilegate.fim.service.biz;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import net.smilegate.fim.advice.exception.NotAcceptedServerException;
import net.smilegate.fim.advice.exception.NotbizNoException;
import net.smilegate.fim.enums.AcceptServer;
import net.smilegate.fim.mappers.fim.BizMapper;
import net.smilegate.fim.util.CommonUtil;
import net.smilegate.fim.vo.BizVO;

@RequiredArgsConstructor
@Service
public class BizServiceImpl implements BizService {
    
    @Value("${biz.post_url}")
    private String BIZ_POST_URL;
    @Value("${biz.xml_rows}")
    private String BIZ_XML_ROWS;
    
    private final BizMapper bizMapper;
    /**
     * @apiNote 넘겨진 사업자 번호로 사업자 등록상태 조회하는 함수
     * @author es-seungglee
     * @param bizNo
     * @return
     */
    public Map<String, Object> getBizInfo(String serverName, String bizNo) {
        Map<String, Object> map = new HashMap<String, Object>();
        if(bizNo.indexOf("-") != -1) {
            bizNo = bizNo.replaceAll("-", "");
        }
        
        Optional<AcceptServer> optional =
                Optional.ofNullable(AcceptServer.getServers(serverName.toLowerCase()));
        optional.orElseThrow(() -> new
                            NotAcceptedServerException("등록되지 않은 서버입니다. 서비스 담당자에게 요청해 주세요"));
        if(!CommonUtil.isBusinessId(bizNo)) {
            throw new NotbizNoException("유효한 사업자 번호가 아닙니다. 사업자 번호를 다시 확인해 주세요");
        } else {
            String resultData = "";
            String postUrl = BIZ_POST_URL;
            String xmlRaw = BIZ_XML_ROWS;
            
            try {
                xmlRaw = xmlRaw.replace("{CRN}", bizNo);                               // 해당 필드 중 {CRN}의 값을 사업자 번호로 변경시킨다.
                URL url = new URL(postUrl);
                HttpURLConnection conn = (HttpURLConnection) url.openConnection();
                conn.setRequestMethod("POST");
                conn.setRequestProperty("Content-Type", "application/xml");
                conn.setDoOutput(true);                                                 // Server 통신에서 출력 가능한 상태로 만듬
                conn.getOutputStream().write(xmlRaw.getBytes("utf-8"));
                
                try (BufferedReader in = new BufferedReader(new InputStreamReader(conn.getInputStream(), "utf-8"))) {
                    String inputLine;
                    
                    while((inputLine  = in.readLine()) != null) {
                        resultData += inputLine;
                    }
                }
                
                List<Map<String, String>> xmlList = CommonUtil.getCrnResultFromXml(resultData);             // xml 형식을 map으로 바꿔서 list형태로 저장
                Map<String, String> firstData = xmlList.get(0);
                map.put("trtCntn"               , firstData.get("trtCntn"));                // 결과 값
                map.put("smpcBmanTrtCntn"       , firstData.get("smpcBmanTrtCntn"));
                map.put("smpcBmanEnglTrtCntn"   , firstData.get("smpcBmanEnglTrtCntn"));
                
                String userId = "admin";
                String userNm = "관리자";      // rback에서 정보를 어떻게 가져올 지 몰라서 일단 전부 다 넣는 걸로 정함. 
                String deptNm = "이노소프트";
                BizVO bizVO = BizVO.builder()
                                    .userId(userId)
                                    .userNm(userNm)
                                    .deptNm(deptNm)
                                    .bizNo(bizNo)
                                    .resultMsg(firstData.get("trtCntn"))
                                    .detailMsg(firstData.get("smpcBmanTrtCntn"))
                                    .detailMsgEngl(firstData.get("smpcBmanEnglTrtCntn"))
                               .build();
                map.put("bizVO", bizVO);
                
                bizMapper.insertBizInfo(bizVO);
                
            }catch (Exception e) {
                e.printStackTrace();
            }
        }
        
        return map;
    }
    
    public Map<String, Object> selectBuzInfoList(BizVO bizVO) {
        Map<String, Object> map = new HashMap<>();
        List<BizVO> bizInfoList = bizMapper.selectBizInfoList(bizVO);
        map.put("bizInfoList", bizInfoList);
        return map;
    }
    
}
