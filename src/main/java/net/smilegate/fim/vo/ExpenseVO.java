package net.smilegate.fim.vo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.Data;

@Data
@Entity(name="TB_EXPENSE")
public class ExpenseVO {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="SEQ_EXPENSE")
    private int seqExpense;
    
    @Column(name = "MID_DIV_CD", length=7)
    // 중분류 코드
    private String midDivCd;
    
    @Column(name ="MID_DIV_CD_NM", length=100)
    // 중분류 코드 명
    private String midDivCdNm;
    
    @Column(name = "SM_DIV_CD", length=3)
    // 소분류 코드
    private String smDivCd;
    
    @Column(name = "SM_DIV_CD_NM", length=100)
    // 소분류 코드 명
    private String smDivCdNm;
    
    @Column(name ="EXPENSE_ITEM_CD", length=11)
    // 비용항목 코드
    private String expenseItemCd;
    
    @Column(name ="EXPENSE_ITEM_CD_NM", length=100)
    // 비용항목 코드 명
    private String expenseItemCdNm;
    
    @Column(name = "ACTIVITY_CD", length=11)
    // activity 코드
    private String activityCd;
    
    @Column(name = "ACTIVITY_CD_NM", length=100)
    // activity 코드 명
    private String activityCdNm;
    
    @Column(name = "TYPE", length=1)
    // 유형
    private String type;
    
    @Column(name = "TYPE_NM", length=100)
    // 유형 명
    private String typeNm;
    
    @Column(name = "USE_TYPE", length=1)
    private int useType;
    
}
