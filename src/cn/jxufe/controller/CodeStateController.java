package cn.jxufe.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.jxufe.entity.CodeState;
import cn.jxufe.service.CodeStateService;

@Controller
@RequestMapping("codeState")
public class CodeStateController {
	@Autowired
	private CodeStateService codeStateService;

	@RequestMapping(value = "/data", produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public Iterable<CodeState> data() throws Exception {
		return codeStateService.findAll();
	}
}
