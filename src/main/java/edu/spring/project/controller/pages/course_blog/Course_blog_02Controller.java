package edu.spring.project.controller.pages.course_blog;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
@Controller

public class Course_blog_02Controller {

	private static final Logger logger = LoggerFactory.getLogger(Course_blog_02Controller.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "course_blog_02")
	public ModelAndView home(ModelAndView mv) throws Exception {
		logger.info("course_blog_02 페이지로 이동", mv);

		mv.setViewName("pages/course_blog/course_blog_02");
		return mv;
	}

}
