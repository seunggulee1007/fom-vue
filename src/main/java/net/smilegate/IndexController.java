package net.smilegate;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class IndexController {
    // init page 설정
    @RequestMapping("/")
    public String index() {
    	
    	return "sample/index";
    }
    
    @ResponseBody
    @RequestMapping("/api/test1")
    public String test() {
    	return "test";
    }
}
