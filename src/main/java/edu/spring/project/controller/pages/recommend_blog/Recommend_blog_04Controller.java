package edu.spring.project.controller.pages.recommend_blog;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
@Controller

public class Recommend_blog_04Controller {

	private static final Logger logger = LoggerFactory.getLogger(Recommend_blog_04Controller.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "recommend_blog_04")
	public ModelAndView home(ModelAndView mv) throws Exception {
		logger.info("recommend_blog_04 페이지로 이동", mv);

		mv.setViewName("pages/recommend_blog/recommend_blog_04");
		return mv;
	}

}
