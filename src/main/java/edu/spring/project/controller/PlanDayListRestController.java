package edu.spring.project.controller;

import java.lang.reflect.Type;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;


import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.google.gson.reflect.TypeToken;

import edu.spring.project.domain.GetPlanInspotVO;
import edu.spring.project.domain.PlanDayListVO;
import edu.spring.project.service.planDayListService;

@RestController
public class PlanDayListRestController {
	
	private static final Logger logger =
			LoggerFactory.getLogger(PlanDayListRestController.class);

	@Autowired planDayListService plandaylistService;	
	
	
	@RequestMapping(value = "/add_plan_city", method = RequestMethod.POST)
	public int AddPlanCity(PlanDayListVO vo) {
		
		plandaylistService.create(vo);
		
		return 1;
	}
	
	
	@RequestMapping(value = "/get_plan_day", method = RequestMethod.POST)
	public ResponseEntity<List<PlanDayListVO>> createPlanDay(int pn_srl){	
		
		List<PlanDayListVO> list = plandaylistService.read(pn_srl);
					
		return new ResponseEntity<List<PlanDayListVO>>(list, HttpStatus.OK);
			
	}
	
	
	
	
}
