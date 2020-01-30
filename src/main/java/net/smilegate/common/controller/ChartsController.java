package net.smilegate.common.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping("common")
@Controller
public class ChartsController {
    @GetMapping("/charts/column")
    public String smartEditorView(Model model) {
    	return "common/charts/column";
    }

}
