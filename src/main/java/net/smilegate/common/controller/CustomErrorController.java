package net.smilegate.common.controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;

import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CustomErrorController implements ErrorController {
    @RequestMapping("/error")
    public String handleError(HttpServletRequest request, Model model) {
		int status = (Integer) request.getAttribute(RequestDispatcher.ERROR_STATUS_CODE);
		if (status == HttpStatus.UNAUTHORIZED.value()) {
		    return "error/401";
		} else if (status == HttpStatus.NOT_FOUND.value()) {
		    return "error/404";
		} else if (status == HttpStatus.INTERNAL_SERVER_ERROR.value()) {
		    return "error/500";
		}
		return "error/error";
    }

    @Override
    public String getErrorPath() {
    	return "/error";
    }
}
