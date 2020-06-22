package edu.spring.project.controller.planlist;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
@Controller

public class PlanListController {
	
	private static final Logger logger = LoggerFactory.getLogger(PlanListController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "planlist")
	public ModelAndView home(ModelAndView mv) throws Exception {
		logger.info("Welcome home! The client locale is {}.", mv);
		
		mv.setViewName("planlist/planlist");
		return mv;
	}
	
}
