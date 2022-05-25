package kz.microhard.microtemplate.controller;

import kz.microhard.microtemplate.service.TemplateService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

@Validated
@RestController
@RequestMapping("/template")
public class TemplateController {

	@Autowired
	private TemplateService tempService;


}
