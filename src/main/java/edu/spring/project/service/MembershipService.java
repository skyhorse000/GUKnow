package edu.spring.project.service;

import java.util.List;


import edu.spring.project.domain.MembershipVO;

//CRUD(CREATE, READ, UPDATE, DELETE)
public interface MembershipService {
	MembershipVO loginCheck(MembershipVO vo);
	
	public abstract List<MembershipVO> read();
	public abstract MembershipVO read(String email);
	public abstract int create(MembershipVO vo); 
	public abstract int update(MembershipVO vo);
	public abstract int delete(MembershipVO vo);
}
