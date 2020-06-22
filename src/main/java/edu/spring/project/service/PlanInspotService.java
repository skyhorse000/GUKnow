package edu.spring.project.service;

import java.util.List;

import edu.spring.project.domain.GetPlanInspotVO;

public interface PlanInspotService {
	public abstract int update(GetPlanInspotVO vo);
	List<GetPlanInspotVO> read(int pn_srl, int set_day);
	int delete(int pn_srl, int set_day);
}
