package net.smilegate.common.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.smilegate.common.mapper.AuthorizationMapper;
import net.smilegate.common.vo.RbacDetail;

@Service
public class AuthorizationServiceImpl implements AuthorizationService{
	@Autowired
    AuthorizationMapper authMapper;

	public List<RbacDetail> selectMenuList(String systemCd, String userId){
		return authMapper.selectMenuList(systemCd, userId);
	}

	@Override
	public Boolean isSystemAuth(String systemCd, String userId) {
		return authMapper.selectSystemAuth(systemCd, userId).size() >= 1 ? true : false; 
	}

	@Override
	public List<RbacDetail> selectAuthList(String systemCd, String userId) {
		return authMapper.selectAuthList(systemCd, userId);
	}
	
}
