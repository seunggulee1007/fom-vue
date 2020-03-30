package net.smilegate.fim.service.biz;

import java.util.Map;

import net.smilegate.fim.vo.BizVO;
import net.smilegate.fim.vo.common.PagingVO;

public interface BizService {
    
    /**
     * @apiNote 넘겨진 사업자 번호로 사업자 등록상태 조회하는 함수
     * @author es-seungglee
     * @param busnpNo
     * @return
     */
    public Map<String, Object> getBizInfo(String serverName, String busnpNo);
    
    public Map<String, Object> selectBuzInfoList(PagingVO pagingVO, BizVO bizVO);
    
}
