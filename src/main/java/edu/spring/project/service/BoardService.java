package edu.spring.project.service;

import java.util.List;

import edu.spring.project.controller.boardPageutil.PageCriteria;
import edu.spring.project.domain.BoardVO;

// CRUD(CREATE, READ, UPDATE, DELETE)
public interface BoardService {
	public abstract List<BoardVO> read();

	public abstract BoardVO read(int bno);

	public abstract int create(BoardVO vo);

	public abstract int update(BoardVO vo);

	public abstract int delete(int bno);

	public abstract int getTotalNumsOfRecords();

	public abstract List<BoardVO> read(PageCriteria criteria);

}
