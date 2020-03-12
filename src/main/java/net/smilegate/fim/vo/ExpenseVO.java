package net.smilegate.fim.vo;

import lombok.Data;

@Data
public class ExpenseVO {
    
    /** 소분류 코드 */
    private int costSeq;
    /** 소분류 명 */
    private String costName;
    /** 비용항목 코드 */
    private String costItemCd;
    /** 비용항목 명 */
    private String costItemNm;
    /** 액티비티 코드 */
    private String activityCd;
    /** 액티비티 명 */
    private String activityNm;
    /** 부서 유형 코드 */
    private String deptType;
    /** 부서 유형 명 */
    private String deptTypeNm;
    /** 중분류 코드 */
    private String smKindSeq;
    /** 중분류 명 */
    private String smKindName;
    /** 법인 코드 */
    private String comCd;
    /** 사용자 명 */
    private String userNm;
    
}
