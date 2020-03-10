package net.smilegate.fim.vo;

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
    
}
