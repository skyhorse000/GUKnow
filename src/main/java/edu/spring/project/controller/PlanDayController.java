package edu.spring.project.controller;

import java.lang.reflect.Type;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;

import edu.spring.project.domain.PlanDayListVO;

@Controller
public class PlanDayController {
	
	private static final Logger logger =
			LoggerFactory.getLogger(PlanDayController.class);
	
	@ResponseBody
	@RequestMapping(value = "/get_plan_day_list", method = RequestMethod.POST)
	public String planDayList(
			@RequestBody String jsonAsString) {
				
		logger.info(jsonAsString);					
				
		return jsonAsString;		
		
	}
}
