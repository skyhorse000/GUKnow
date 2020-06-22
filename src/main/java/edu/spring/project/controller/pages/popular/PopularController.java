package edu.spring.project.controller.pages.popular;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
@Controller

public class PopularController {
	
	private static final Logger logger = LoggerFactory.getLogger(PopularController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "popular")
	public ModelAndView home(ModelAndView mv) throws Exception {
		logger.info("인기 여행지 페이지 이동", mv);
		
		mv.setViewName("pages/popular/popular");
		return mv;
	}
	
}
