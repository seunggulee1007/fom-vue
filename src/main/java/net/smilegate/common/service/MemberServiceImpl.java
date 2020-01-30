package net.smilegate.common.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.slf4j.Slf4j;
import net.smilegate.common.mapper.MemberMapper;
import net.smilegate.common.vo.Member;

@Slf4j
@Service
public class MemberServiceImpl implements MemberService {
    @Autowired
    private MemberMapper memberMapper;

	@Override
	public Member selectMember(Member member) {
		return memberMapper.selectMember(member);
	}

    @Override
    public Member selectMemberByEmail(String email) {
    	String id = email.contains("@") ? email.split("@")[0] : email;
    	return memberMapper.selectMemberById(id);
    }

	@Override
	public Member selectMemberByLogonId(String logonId) {
		return memberMapper.selectMemberByLogonId(logonId);
	}
}
