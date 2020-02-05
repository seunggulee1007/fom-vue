package net.smilegate.fim.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import io.swagger.annotations.ApiOperation;
import net.smilegate.common.service.MemberService;
import net.smilegate.common.vo.Member;

@Controller
public class TestController {
    
    @Autowired
    private MemberService memberService;
    
    @ApiOperation(value="", notes="")
    @GetMapping("/test/getTest")
    public Map<String, Object> getTest() {
        Map<String, Object> map = new HashMap<>();
        Member member = new Member();
        member.setLogonId("herald");
        map.put("getTest", memberService.selectMember(member));
        return map;
    }
    
    @GetMapping("/test/testUpload")
    public String testUpload() {
        return "test/testUpload";
    }
    
}
