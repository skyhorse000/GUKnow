package edu.spring.project.controller.planlist;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import edu.spring.project.domain.MemberVO;
import edu.spring.project.service.MemberInfoService;

@RestController
public class PlanListRestController {
	
	private static final Logger logger = 
			LoggerFactory.getLogger(PlanListRestController.class);
	
	
	@Autowired MemberInfoService memberInfoService;
	
	
	@RequestMapping(value = "/get_member_info", method = RequestMethod.POST)
	public List<MemberVO> getMemberInfo(MemberVO vo) {
	
		logger.info("controller »£√‚ : " + vo.getUser_id());
		
		return memberInfoService.MemberInfoSelect(vo);
	}
	
	
}
