package edu.spring.project.controller.pages.recommend;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
@Controller

public class RecommendController {
	
	private static final Logger logger = LoggerFactory.getLogger(RecommendController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "recommend")
	public ModelAndView home(ModelAndView mv) throws Exception {
		logger.info("추천페이지 이동", mv);
		
		mv.setViewName("pages/recommend/recommend");
		return mv;
	}
	
}
