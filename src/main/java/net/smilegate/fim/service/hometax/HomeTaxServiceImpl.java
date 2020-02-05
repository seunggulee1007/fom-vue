package net.smilegate.fim.service.hometax;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import net.smilegate.fim.util.CommonUtil;

@Service
public class HomeTaxServiceImpl implements HomeTaxService {
    
    @Value("${hometax.post_url}")
    private String HOMETAX_POST_URL;
    @Value("${hometax.xml_rows}")
    private String HOMETAX_XML_ROWS;
    /*
     * @Autowired private BusnpDao busnpDao;
     */
    
    /**
     * @param busnpNo : 사업자번호
     */
    public Map<String, Object> getBusnpInfo(String busnpNo) throws Exception {
        Map<String, Object> map = new HashMap<String, Object>();
        if(busnpNo.indexOf("-") != -1) {
            busnpNo = busnpNo.replaceAll("-", "");
        }
        String resultData = "";
        String postUrl = HOMETAX_POST_URL;
        String xmlRaw = HOMETAX_XML_ROWS;
        
        try {
            xmlRaw = xmlRaw.replace("{CRN}", busnpNo);                               // 해당 필드 중 {CRN}의 값을 사업자 번호로 변경시킨다.
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
            firstData.put("busnpNo", busnpNo);
            map.put("trtCntn"               , firstData.get("trtCntn"));                // 결과 값
            map.put("smpcBmanTrtCntn"       , firstData.get("smpcBmanTrtCntn"));
            map.put("smpcBmanEnglTrtCntn"   , firstData.get("smpcBmanEnglTrtCntn"));
           // busnpDao.insertBusnpNo(firstData);
        }catch (Exception e) {
            e.printStackTrace();
        }
        
        return map;
    }
    
    public Map<String, Object> getBusnpList() throws Exception {
        Map<String, Object> map = new HashMap<String, Object>();
        try {
            // map.put("busnpList", busnpDao.selectBusnpNoList());
        }catch (Exception e) {
            e.printStackTrace();
        }
        return map;
    }
    
}
