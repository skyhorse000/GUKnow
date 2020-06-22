package edu.spring.project.controller.pages.course;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
@Controller

public class CourseController {
	
	private static final Logger logger = LoggerFactory.getLogger(CourseController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "course")
	public ModelAndView home(ModelAndView mv) throws Exception {
		logger.info("코스 페이지 이동", mv);
		
		mv.setViewName("pages/course/course");
		return mv;
	}
	
}
