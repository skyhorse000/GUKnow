package edu.spring.project.controller.pages.theme_blog;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
@Controller

public class Theme_blog_07Controller {

	private static final Logger logger = LoggerFactory.getLogger(Theme_blog_07Controller.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "theme_blog_07")
	public ModelAndView home(ModelAndView mv) throws Exception {
		logger.info("theme_blog_07 페이지로 이동", mv);

		mv.setViewName("pages/theme_blog/theme_blog_07");
		return mv;
	}

}
