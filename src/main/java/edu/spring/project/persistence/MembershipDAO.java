package edu.spring.project.persistence;

import java.util.List;

import edu.spring.project.domain.MembershipVO;

public interface MembershipDAO {
	MembershipVO loginCheck(MembershipVO vo);
	
	public abstract List<MembershipVO> select();
	public abstract MembershipVO select(String email);
	public abstract int insert(MembershipVO vo);
	public abstract int update(MembershipVO vo);
//	public abstract int delete(int bno);
	public abstract int delete(MembershipVO vo);

}