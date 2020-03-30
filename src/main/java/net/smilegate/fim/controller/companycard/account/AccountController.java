package net.smilegate.fim.controller.companycard.account;

import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import net.smilegate.common.controller.EditorController;
import net.smilegate.fim.mappers.fim.tiarcost.TiarCostAmtMapper;
import net.smilegate.fim.mappers.fim.tiarcost.TiarCostMapper;
import net.smilegate.fim.service.companycard.AccountService;
import net.smilegate.fim.service.file.board.FileService;
import net.smilegate.fim.util.FileUtil;
import net.smilegate.fim.vo.FileVO;
import net.smilegate.fim.vo.account.CompanyCardCostInfoVO;
import net.smilegate.fim.vo.account.CompanyCardDetailVO;
import net.smilegate.fim.vo.account.CompanyCardMasterVO;
import net.smilegate.fim.vo.account.CompanyCardVO;
import net.smilegate.fim.vo.common.CommonResultVO;

@Slf4j
@RestController
@RequestMapping("/companyCard/account")
public class AccountController {

	@Autowired
	private AccountService service;

	@ApiOperation(value="법인카드 조회", notes="조회하고자 하는 직원의 법인카드 목록을 조회 한다. ")
    @ApiImplicitParams({
        @ApiImplicitParam(name="companySeq", value="법인코드", required = true, dataType="string", defaultValue = ""),
        @ApiImplicitParam(name="empSeq", value="사용자코드", required = true, dataType="string", defaultValue = "")
    })
	@PostMapping("/getCompanyCardList")
	public CommonResultVO getCompanyCardList(@RequestParam("companySeq") String companySeq, @RequestParam("empSeq") String empSeq) {

		List<CompanyCardVO> rtnList = null;

        try {

        	return CommonResultVO.builder().data(service.getCompanyCardList(companySeq, empSeq)).result(0000).build();
		} catch (Exception e) {
			e.printStackTrace();
			return CommonResultVO.builder().result(9999).resultMsg(e.getMessage()).build();
			// TODO Auto-generated catch block
		}
	}


	@PostMapping("/saveAccount")
	public CommonResultVO saveAccount(MultipartHttpServletRequest request, CompanyCardMasterVO vo) {

		log.debug("getRegDate =====> " + vo.getRegDate());
		log.debug("getErpCompanySeq =====> " + vo.getErpCompanySeq());
		log.debug("getCardDetailList size =====> " + vo.getCardDetailList().size());

		for(CompanyCardDetailVO detail : vo.getCardDetailList()) {
			log.debug("useCheck ===>>> " + detail.getUseCheck());
			log.debug("companySeq ===>>> " + detail.getCompanySeq());

			CompanyCardCostInfoVO costInfo = detail.getCostInfoVO();

			log.debug("costInfo.getErpsmKindSeq ===>>> " + costInfo.getErpsmKindSeq());
			log.debug("costInfo.getTiCostSerl ===>>> " + costInfo.getTiCostSerl());
		}

		try {
			service.insertAccount(request, vo);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return CommonResultVO.builder().result(0000).resultMsg("정상처리 되었습니다.").build();
	}

	@PostMapping("/getCompanyCardUseList")
	public List<CompanyCardDetailVO> getCompanyCardUseList(@RequestParam("yyyymm") String yyyymm){

		List<CompanyCardDetailVO> list = null;
		try {
			list = service.getCompanyCardUseList(yyyymm);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return list;
	}
}
