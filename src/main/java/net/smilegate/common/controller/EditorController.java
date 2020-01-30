package net.smilegate.common.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;
import net.smilegate.common.service.FileUploadException;
import net.smilegate.common.vo.EditorContents;

@Slf4j
@RequestMapping("common")
@Controller
public class EditorController {
    @GetMapping("/editor/smart")
    public String smartEditorView(Model model) {
    	return "common/editor/smart";
    }

    @PostMapping("/editor/save")
    public String save(@ModelAttribute EditorContents editorContents) throws FileUploadException {
    	log.debug(editorContents.toString());
        return "common/editor/smart";
    }
//    @PostMapping("/editor/save")
//    public String save(@RequestBody EditorContents contents) throws FileUploadException {
//	contents.toString();
//	return "common/upload/excel";
//    }

    @GetMapping("/editor/daum")
    	public String daumEditorView(Model model) {
    	return "common/editor/daum";
    }

    @GetMapping("/editor/toast")
    	public String toastEditorView(Model model) {
    	return "common/editor/toast";
    }
}
