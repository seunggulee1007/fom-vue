package net.smilegate.common.mapper;

import org.apache.ibatis.annotations.Mapper;

import net.smilegate.common.vo.Member;

@Mapper
public interface MemberMapper {
    /**
     *
     * @param email : TB_BASE_MEMBER(email column)
     * @return Member object
     */
    Member selectMember(Member member);
    Member selectMemberById(String id);
    Member selectMemberByLogonId(String logonId);
}
