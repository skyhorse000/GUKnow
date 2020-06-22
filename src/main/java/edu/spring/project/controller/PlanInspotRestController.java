package edu.spring.project.controller;

import java.lang.reflect.Type;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;

import edu.spring.project.domain.GetPlanInspotVO;
import edu.spring.project.domain.PlanDayListVO;
import edu.spring.project.service.PlanInspotService;

@RestController
public class PlanInspotRestController {
	private static final Logger logger = 
			LoggerFactory.getLogger(PlanInspotRestController.class);
	
	
	@Autowired PlanInspotService planInspotService;
	
	@RequestMapping(value = "/set_plan_inspot", method = RequestMethod.POST)
	public int PlanUpsert(GetPlanInspotVO vo) {
		
		logger.info("controller 호출 : vo값 " + vo.getTitle());	
		
		planInspotService.update(vo);
			
		
		return 1;
	}
	
	
	@RequestMapping(value = "/get_plan_inspot", method = RequestMethod.POST)
	public ResponseEntity<List<GetPlanInspotVO>> PlanSelect(int pn_srl, int set_day) {
		
	
		logger.info("controller 호출");
		
		List<GetPlanInspotVO> list = planInspotService.read(pn_srl, set_day);
		

		
		return new ResponseEntity<List<GetPlanInspotVO>>(list, HttpStatus.OK);
		
	}
	
	@RequestMapping(value = "/del_plan_inspot", method = RequestMethod.POST)
	public int PlanDelete(int pn_srl, int set_day) {
		
		
		logger.info("delete 실행 : " + pn_srl + " set_day : " + set_day);
		
		planInspotService.delete(pn_srl, set_day);
		
		return 1;
		
	}
	
	
}
