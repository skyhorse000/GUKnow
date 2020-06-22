package edu.spring.project.controller.pages.board_list;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
@Controller

public class Board_listController {

	private static final Logger logger = LoggerFactory.getLogger(Board_listController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "layouts")
	public ModelAndView home(ModelAndView mv) throws Exception {
		logger.info("layouts 페이지로 이동", mv);

		mv.setViewName("tiles/layouts.tiles");
		return mv;
	}

}
