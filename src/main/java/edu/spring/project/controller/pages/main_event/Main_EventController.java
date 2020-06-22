package edu.spring.project.controller.pages.main_event;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
@Controller

public class Main_EventController {
	
	private static final Logger logger = LoggerFactory.getLogger(Main_EventController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "main_event")
	public ModelAndView home(ModelAndView mv) throws Exception {
		logger.info("main_event 페이지 이동", mv);
		
		mv.setViewName("pages/main_event/main_event");
		return mv;
	}
	
}
