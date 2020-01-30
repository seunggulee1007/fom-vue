package net.smilegate.common.vo;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class RbacDetail {
	
	private String rbacId; 
	private String parentsRbacId;
	private String rbacNm;
	private String rbacENm;
	private String treeRbacId;
	private String isLeaf;
	private String sort;
	private String systemCd;
	private String typeGb; 
	private String authUseYn;
	private String pageUrl;
	private String rbacLevel;
	private String sortNo;
	private String useYn;
	private String opt1;
	private String opt2;
	private String optExplain;
	private String auth; 

}
