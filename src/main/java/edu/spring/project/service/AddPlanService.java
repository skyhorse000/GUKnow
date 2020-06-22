package edu.spring.project.service;

import java.util.List;

import edu.spring.project.domain.MemberVO;
import edu.spring.project.domain.PlanInfoVO;

public interface AddPlanService {
	public abstract int create(MemberVO vo);
	int planCreate(PlanInfoVO vo);
	int InfoUpdate(int pn_srl, String pn_title);
	int InfoUpdateCom(int pn_srl, int pn_complete);
	List<PlanInfoVO> InfoSelect(int pn_srl);
	int UrlSelectChk(int pn_srl);
	int deletePlanAll(int pn_srl);
}
