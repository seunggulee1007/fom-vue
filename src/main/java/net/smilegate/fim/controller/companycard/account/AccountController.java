package net.smilegate.fim.controller.companycard.account;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import net.smilegate.fim.service.companycard.CompanyCardService;
import net.smilegate.fim.vo.common.CommonResultVO;
import net.smilegate.fim.vo.companycard.CompanyCardCostInfoVO;
import net.smilegate.fim.vo.companycard.CompanyCardDetailVO;
import net.smilegate.fim.vo.companycard.CompanyCardMasterVO;
import net.smilegate.fim.vo.companycard.CompanyCardVO;

@Slf4j
@RestController
@RequestMapping("/companyCard/account")
public class AccountController {

	@Autowired
	private CompanyCardService service;

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


	/**
	 * 정산내역 저장.
	 * @param request
	 * @param vo
	 * @return
	 */
	@PostMapping("/saveAccount")
	public CommonResultVO saveAccount(MultipartHttpServletRequest request, CompanyCardMasterVO vo) {

		CommonResultVO resultVo;

		try {

			log.debug("getRegDate =====> " + vo.getRegDate());
			log.debug("getErpCompanySeq =====> " + vo.getErpCompanySeq());
			log.debug("getCardDetailList size =====> " + vo.getCardDetailList().size());

			for(CompanyCardDetailVO detail : vo.getCardDetailList()) {
				log.debug("useCheck ===>>> " + detail.getUseCheck());
				log.debug("companySeq ===>>> " + detail.getCompanySeq());

				CompanyCardCostInfoVO costInfo = detail.getCostInfoVO();

				log.debug("costInfo.getErpsmKindSeq ===>>> " + costInfo.getSmKindNm());
				log.debug("costInfo.getTiCostSerl ===>>> " + costInfo.getTiCostSerl());
			}

			service.saveCompanyCardMaster(request, vo);

			resultVo = CommonResultVO.builder().result(0000).resultMsg("정상처리 되었습니다.").build();
		}
		catch (NullPointerException e) {
			// TODO Auto-generated catch block
			resultVo = CommonResultVO.builder().result(9998).resultMsg("에러가 발생 되었습니다." + e.getMessage()).build();
			e.printStackTrace();
		}
		catch (Exception e) {
			// TODO Auto-generated catch block
			resultVo = CommonResultVO.builder().result(9999).resultMsg("에러가 발생 되었습니다. ").build();

			e.printStackTrace();
		}
		return resultVo;
	}

	/**
	 * 정산목록 조회.
	 * @param yyyymm
	 * @return
	 */
	@PostMapping("/getCompanyCardMasterList")
	public CommonResultVO getCompanyCardMasterList(@RequestParam("fromYm") String fromYm, @RequestParam("toYm") String toYm){

		try {
			return CommonResultVO.builder().data(service.getCompanyCardMasterList(fromYm, toYm)).result(0000).build();
		} catch (Exception e) {
			e.printStackTrace();

			return CommonResultVO.builder().result(9999).resultMsg(e.getMessage()).build();
			// TODO Auto-generated catch block
		}

	}

	/**
	 * 결제내역 조회.
	 * 정산목록 마스터에서 마스터 키를 탭을 이동 시켜서 조회 한다.
	 * @param fromYm
	 * @param toYm
	 * @return
	 */
	@PostMapping("/getCardUseData")
	public CommonResultVO getCardUseData(@RequestParam("cardUseSeq") int cardUseSeq){

		try {
			return CommonResultVO.builder().data(service.getCardUseData(cardUseSeq)).result(0000).build();
		} catch (Exception e) {
			e.printStackTrace();

			return CommonResultVO.builder().result(9999).resultMsg(e.getMessage()).build();
			// TODO Auto-generated catch block
		}

	}

	@PostMapping("/doDeleteFile")
	public CommonResultVO doDeleteFile(@RequestParam("cardUseSeq") int cardUseSeq,
										@RequestParam("fileSerl") int fileSerl,
										@RequestParam("regUserId") String regUserId){
		try {
			return CommonResultVO.builder().data(service.doDeleteFile(cardUseSeq, fileSerl, regUserId)).result(0000).resultMsg("삭제 되었습니다.").build();
		} catch (Exception e) {
			e.printStackTrace();

			return CommonResultVO.builder().result(9999).resultMsg(e.getMessage()).build();
			// TODO Auto-generated catch block
		}
	}

	@PostMapping("/getCompanyCardConfirmList")
	public CommonResultVO getCompanyCardConfirmList(@RequestParam("companySeq") String companySeq,
													@RequestParam("cardCd") String cardCd,
													@RequestParam("calcDate") String calcDate,
													@RequestParam("empSeq") String empSeq) {

		try {
			return CommonResultVO.builder().data(service.getCompanyCardConfirmList(companySeq, cardCd, calcDate, empSeq)).result(0000).build();
		} catch (Exception e) {
			e.printStackTrace();

			return CommonResultVO.builder().result(9999).resultMsg(e.getMessage()).build();
			// TODO Auto-generated catch block
		}
	}
}
