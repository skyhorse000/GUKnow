package edu.spring.project.controller.pages.favorite;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
@Controller

public class Favorite01_2Controller {

	private static final Logger logger = LoggerFactory.getLogger(Favorite01_2Controller.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "favorite01_2")
	public ModelAndView home(ModelAndView mv) throws Exception {
		logger.info("favorite01_2 페이지로 이동", mv);

		mv.setViewName("pages/favorite/favorite01_2");
		return mv;
	}

}
