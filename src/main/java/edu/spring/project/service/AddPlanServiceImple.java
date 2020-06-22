package edu.spring.project.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.spring.project.domain.MemberVO;
import edu.spring.project.domain.PlanInfoVO;
import edu.spring.project.persistence.AddPlanDAO;

@Service
public class AddPlanServiceImple implements AddPlanService {
	private static final Logger logger = 
			LoggerFactory.getLogger(AddPlanServiceImple.class);
	
	@Autowired AddPlanDAO dao;

	@Override
	public int create(MemberVO vo) {
		logger.info("서비스 호출 : pn :" + vo.getPn_srl());
		
		return dao.AddPlan(vo);
	}

	@Override
	public int planCreate(PlanInfoVO vo) {
		logger.info("서비스 info 호출");
		return dao.InfoInsert(vo);
	}

	@Override
	public int InfoUpdate(int pn_srl, String pn_title) {
		dao.InfoUpdate(pn_srl, pn_title);		
		return 1;
	}

	@Override
	public List<PlanInfoVO> InfoSelect(int pn_srl) {
		
		return dao.InfoSelect(pn_srl);
	}

	@Override
	public int InfoUpdateCom(int pn_srl, int pn_complete) {
		dao.InfoUpdateCom(pn_srl, pn_complete);		
		return 1;
	}

	@Override
	public int UrlSelectChk(int pn_srl) {
		logger.info("service : " + pn_srl);
		return dao.UrlSelectChk(pn_srl);
	}

	@Override
	public int deletePlanAll(int pn_srl) {
		logger.info("서비스 실행");
		return dao.deletePlanAll(pn_srl);
	}
	
	
	
	

}
