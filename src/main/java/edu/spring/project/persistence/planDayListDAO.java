package edu.spring.project.persistence;

import java.util.List;

import edu.spring.project.domain.PlanDayListVO;

public interface planDayListDAO {

	int insert(PlanDayListVO vo);
	List<PlanDayListVO> read(int pn_srl);
}
