package edu.spring.project.controller.pages.covid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
@Controller

public class CovidController {
	
	private static final Logger logger = LoggerFactory.getLogger(CovidController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "covid")
	public ModelAndView home(ModelAndView mv) throws Exception {
		logger.info("covid 페이지로 이동", mv);
		
		mv.setViewName("pages/covid/covid");
		return mv;
	}
	
}
