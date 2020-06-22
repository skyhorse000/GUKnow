package edu.spring.project.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
public class scheduleController {
	private static final Logger logger = 
			LoggerFactory.getLogger(scheduleController.class);
	
	
	@RequestMapping(value = "/create")	
	public void scheduleCreate(){
		logger.info("create 호출");		
	}
	
	@RequestMapping(value = "/workspace")
	public void workspace() {
		logger.info("work 호출");
	}

	
	
		
	@RequestMapping(value = "/JsonTest")	
	public void scheduleTest(){
		logger.info("test 호출");	
		
	}	
	
	

}
