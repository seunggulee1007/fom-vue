package net.smilegate.common.service;

import java.util.List;

import net.smilegate.common.vo.RbacDetail;

public interface AuthorizationService {
	public List<RbacDetail> selectMenuList(String systemCd, String userId);
	public Boolean isSystemAuth(String systemCd, String userId);
	public List<RbacDetail> selectAuthList(String systemCd, String userId);
}
