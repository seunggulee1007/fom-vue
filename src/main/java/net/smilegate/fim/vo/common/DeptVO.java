package net.smilegate.fim.vo.common;

import java.util.List;

import lombok.Data;

@Data
public class DeptVO {

    private String deptCd;
    
    private String parentCd;
    
    private String deptNm;
    
    private int deptLevel;
    
    private String deptSort;
    
    private String deptCdPath;
    
    private String deptNmPath;
    
    private String comCd;
    
    private String comNm;
    
    private List<DeptVO> child;
    /** erp사용자 코드 */
    private int useErpEmpSeq;
    /** 사용자 코드 */
    private String userId;
    /** 사용자 사번 */
    private String empNo;
    /** 예산부서코드2 */
    private int budgetDeptCd;
    
    private String budgetDeptNm;
    /** 예산부서 코드 */
    private int budgetErpDeptSeq;
    
    private String budgetErpDeptNm;
    
    /** 사용자 이름 */
    private String useUserNm;
    
    private String useDeptCd;
    
    private String useDeptNm;
    
    /** 사용자 사번 */
    private String useEmpNo;
    /** 사용자 코드 */
    private String useUserId;
    /** 사용자 부서코드 */
    private int useErpDeptSeq;
    
    private String useErpDeptNm;
    
}
