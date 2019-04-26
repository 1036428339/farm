package cn.jxufe.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.jxufe.entity.CodeLand;
import cn.jxufe.service.CodeLandService;

@Controller
@RequestMapping("codeLand")
public class CodeLandController {
	@Autowired
	private CodeLandService codeLandService;

	@RequestMapping(value = "/data", produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public Iterable<CodeLand> data() throws Exception {
		return codeLandService.findAll();
	}
}
