package edu.spring.project.persistence;

import java.util.List;

import edu.spring.project.domain.ReplyVO;

public interface ReplyDAO {
	int insert(ReplyVO vo);

	List<ReplyVO> select(int bno);

	int update(ReplyVO vo);

	int delete(int rno);
}