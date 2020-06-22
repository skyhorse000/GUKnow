package edu.spring.project.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import edu.spring.project.domain.MemberVO;
import edu.spring.project.domain.PlanInfoVO;
import edu.spring.project.service.AddPlanService;

@RestController
public class AddPlanRestController {
	
	
	private static final Logger logger = 
			LoggerFactory.getLogger(scheduleController.class);
	
	
	@Autowired AddPlanService addPlanService;
	
	@RequestMapping(value = "/add_plan_member", method = RequestMethod.POST)
	public int addPlan(MemberVO vo) {
		
		logger.info("controller 호출 : vo값 " + vo.getUser_id());	
		addPlanService.create(vo);
			
		
		return vo.getPn_srl();
	}
	
	@RequestMapping(value = "/add_plan_info", method = RequestMethod.POST)
	public int AddPlanInfo(PlanInfoVO vo) {
		
		logger.info("controller 호출 : vo값 " + vo);
		addPlanService.planCreate(vo);
		
		return 1;
	}
	
	@RequestMapping(value = "/set_plan_info", method = RequestMethod.POST)
	public int setPlanInfo(int pn_srl, String pn_title) {
		
		addPlanService.InfoUpdate(pn_srl, pn_title);	
		return 1;
	}	
	
	
	@RequestMapping(value = "/get_plan_info")
	public List<PlanInfoVO> getPlanInfo(int pn_srl){
				
			
		return addPlanService.InfoSelect(pn_srl);
	}
	
	@RequestMapping(value = "/set_plan_info_com", method = RequestMethod.POST)
	public int setPlanInfo(int pn_srl, int pn_complete) {
		
		addPlanService.InfoUpdateCom(pn_srl, pn_complete);
		return 1;
	}	
	
	
	@RequestMapping(value = "/url_check", method = RequestMethod.POST)
	public int urlCheck(int pn_srl){
						logger.info("con pn: " + pn_srl);
		return addPlanService.UrlSelectChk(pn_srl);
	}
	
	
	@RequestMapping(value = "/delete_plan_all", method = RequestMethod.POST)
	public int deletePlanAll(int pn_srl) {
		
			logger.info("콘트롤러 실행");
			
		return addPlanService.deletePlanAll(pn_srl);
		
	}
	


}
