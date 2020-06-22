package edu.spring.project.persistence;

import java.util.List;

import edu.spring.project.domain.GetPlanInspotVO;

public interface PlanInspotDAO {
	public abstract int upsert(GetPlanInspotVO vo);
	List<GetPlanInspotVO> select(int pn_srl, int set_day);
	int delete(int pn_srl,int set_day);
}
