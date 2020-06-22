package edu.spring.project.service;

import java.util.List;

import edu.spring.project.domain.PlanDayListVO;

public interface planDayListService {
	int create(PlanDayListVO vo);
	List<PlanDayListVO> read(int pn_srl);
}
