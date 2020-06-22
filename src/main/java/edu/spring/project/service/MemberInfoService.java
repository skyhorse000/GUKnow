package edu.spring.project.service;

import java.util.List;

import edu.spring.project.domain.MemberVO;

public interface MemberInfoService {
	List<MemberVO> MemberInfoSelect(MemberVO vo);
	
}
