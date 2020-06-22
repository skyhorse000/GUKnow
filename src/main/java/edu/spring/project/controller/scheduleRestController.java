package edu.spring.project.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import edu.spring.project.domain.ScheduleValue;
import edu.spring.project.service.getCityListService;

@RestController
@RequestMapping(value = "/get_city_list")
public class scheduleRestController {
	
	private static final Logger logger = 
			LoggerFactory.getLogger(scheduleRestController.class);
	
	
	@Autowired
	private getCityListService getcityService;
	
	@RequestMapping(method = RequestMethod.POST)	
	public ResponseEntity<List<ScheduleValue>> getCityList() {		

		List<ScheduleValue> list = getcityService.getCityListRead();		
		return new ResponseEntity<List<ScheduleValue>>(list, HttpStatus.OK);
		
	}
	
	
	
	
	
	
}
