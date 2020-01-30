package net.smilegate.common.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import net.smilegate.common.vo.RbacDetail;

@Mapper
public interface AuthorizationMapper {
	public List<RbacDetail> selectMenuList(String systemCd, String userId);
	public List<RbacDetail> selectSystemAuth(String systemCd, String userId);
	public List<RbacDetail> selectAuthList(String systemCd, String userId);
}
