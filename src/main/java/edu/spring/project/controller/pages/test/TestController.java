package edu.spring.project.controller.pages.test;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
@Controller

public class TestController {

	private static final Logger logger = LoggerFactory.getLogger(TestController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "list")
	public ModelAndView home(ModelAndView mv) throws Exception {
		logger.info("list 페이지로 이동", mv);

		mv.setViewName("test/list.tiles");
		return mv;
	}

}
