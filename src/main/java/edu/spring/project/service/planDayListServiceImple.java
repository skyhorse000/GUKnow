package edu.spring.project.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.spring.project.domain.PlanDayListVO;
import edu.spring.project.persistence.planDayListDAO;

@Service
public class planDayListServiceImple implements planDayListService{
	private static final Logger logger =
			LoggerFactory.getLogger(planDayListServiceImple.class);
	
	@Autowired
	private planDayListDAO dao;


	@Override
	public int create(PlanDayListVO vo) {
		logger.info("service »£√‚" + vo);
		return dao.insert(vo);
	}


	@Override
	public List<PlanDayListVO> read(int pn_srl) {
		
		return dao.read(pn_srl);
	}
			
	
}
