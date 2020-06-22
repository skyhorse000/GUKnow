package edu.spring.project.persistence;

import java.util.List;

import edu.spring.project.domain.MemberVO;
import edu.spring.project.domain.PlanInfoVO;

public interface AddPlanDAO {
	public abstract int AddPlan(MemberVO vo);
	int InfoInsert(PlanInfoVO vo);
	int InfoUpdate(int pn_srl,String pn_title);
	int InfoUpdateCom(int pn_srl, int pn_complete);
	List<PlanInfoVO> InfoSelect(int pn_srl);
	int UrlSelectChk(int pn_srl);
	int deletePlanAll(int pn_srl);
	
}
