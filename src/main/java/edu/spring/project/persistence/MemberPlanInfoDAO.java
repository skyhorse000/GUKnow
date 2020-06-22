package edu.spring.project.persistence;

import java.util.List;

import edu.spring.project.domain.MemberVO;

public interface MemberPlanInfoDAO {
	List<MemberVO> MemberinfoSelect(MemberVO vo);
}
