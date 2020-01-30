package net.smilegate.common.service;

import net.smilegate.common.vo.Member;

public interface MemberService {
    public Member selectMember(Member member);
    public Member selectMemberByEmail(String email);
    public Member selectMemberByLogonId(String logonId);
}
