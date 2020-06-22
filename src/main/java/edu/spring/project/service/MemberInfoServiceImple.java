package edu.spring.project.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.spring.project.domain.MemberVO;
import edu.spring.project.persistence.MemberPlanInfoDAO;

@Service
public class MemberInfoServiceImple implements MemberInfoService {

	private static final Logger logger = 
			LoggerFactory.getLogger(MemberInfoServiceImple.class);
	
	@Autowired MemberPlanInfoDAO dao;
	
	@Override
	public List<MemberVO> MemberInfoSelect(MemberVO vo) {		
		logger.info("service»£√‚");
		return dao.MemberinfoSelect(vo);
	}
	
}
