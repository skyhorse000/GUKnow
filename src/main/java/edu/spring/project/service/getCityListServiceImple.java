package edu.spring.project.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.spring.project.domain.ScheduleValue;
import edu.spring.project.persistence.getCityDAO;

@Service
public class getCityListServiceImple implements getCityListService {
	private static final Logger logger = 
			LoggerFactory.getLogger(getCityListServiceImple.class);
	
	@Autowired
	private getCityDAO dao;
	
	@Override
	public List<ScheduleValue> getCityListRead(){
		logger.info("getCityListRead() »£√‚");
		
		return dao.getCityList();
	}
	
	
}
