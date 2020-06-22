package edu.spring.project.controller.pages.accommodation_blog;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
@Controller

public class Accommodation_blog_08Controller {

	private static final Logger logger = LoggerFactory.getLogger(Accommodation_blog_08Controller.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "accommodation_blog_08")
	public ModelAndView home(ModelAndView mv) throws Exception {
		logger.info("accommodation_blog_08 페이지로 이동", mv);

		mv.setViewName("pages/accommodation_blog/accommodation_blog_08");
		return mv;
	}

}
