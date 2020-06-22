package edu.spring.project.controller.pages.f_sub;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
@Controller

public class F_sub03Controller {

	private static final Logger logger = LoggerFactory.getLogger(F_sub03Controller.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "f_sub03")
	public ModelAndView home(ModelAndView mv) throws Exception {
		logger.info("f_sub03 페이지로 이동", mv);

		mv.setViewName("pages/f_sub/f_sub03");
		return mv;
	}

}
