package net.smilegate.common.service;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.io.FilenameUtils;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Service;

import net.smilegate.common.vo.ExternalAccount;

@Service
public class ExcelUploadServiceImpl implements ExcelUploadService {

    /**
     * dynamic excel template data 생성
     * @param model
     * @return
     * @throws Exception
     */
    @Override
    public List<ExternalAccount> createDynamicTemplateData() {
		List<ExternalAccount> list = new ArrayList<ExternalAccount>();
		ExternalAccount account = ExternalAccount.builder().applicant("강두영").reason("채용 관련 요청사항 협력사 반출 목적")
			.targetName("김협력").targetId("hrkim").targetPasswd("hrkim00#").build();
		list.add(account);
		account = ExternalAccount.builder().applicant("양세랑").reason("ITSM 제안 자료 NKIA 공유 목적")
			.targetName("이외부").targetId("wblee").targetPasswd("wblee00#").build();
		list.add(account);
		account = ExternalAccount.builder().applicant("김경민").reason("peaple 재계약 서류 반출 목적")
			.targetName("박도급").targetId("dgpark").targetPasswd("dgpark00#").build();
		list.add(account);
		return list;
    }
}
