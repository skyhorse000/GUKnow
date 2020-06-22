package edu.spring.project.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.spring.project.domain.GetPlanInspotVO;
import edu.spring.project.persistence.PlanInspotDAO;

@Service
public class PlanInspotServiceImple implements PlanInspotService {

	private static final Logger logger = 
			LoggerFactory.getLogger(PlanInspotServiceImple.class);
	
	@Autowired PlanInspotDAO dao;
	
	@Override
	public int update(GetPlanInspotVO vo) {
		
		return dao.upsert(vo);
	}
	

	@Override
	public List<GetPlanInspotVO> read(int pn_srl, int set_day) {
		
	
		logger.info("service 호출");
		
		
		return dao.select(pn_srl, set_day);
	}


	@Override
	public int delete(int pn_srl, int set_day) {
		
		logger.info("service del 호출");
		
		return dao.delete(pn_srl, set_day);
	}

}
