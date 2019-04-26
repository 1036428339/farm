package cn.jxufe.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.jxufe.entity.CodeType;
import cn.jxufe.service.CodeTypeService;

@Controller
@RequestMapping("codeType")
public class CodeTypeController {
	@Autowired
	private CodeTypeService codeTypeService;

	@RequestMapping(value = "/data", produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public Iterable<CodeType> data() throws Exception {
		return codeTypeService.findAll();
	}
}
