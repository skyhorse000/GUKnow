package edu.spring.project.service;

import java.util.List;

import edu.spring.project.domain.ReplyVO;

public interface ReplyService {
	public abstract int create(ReplyVO vo) throws Exception;

	public abstract List<ReplyVO> read(int bno);

	public abstract int update(ReplyVO vo);

	public abstract int delete(int rno, int bno) throws Exception;

}
