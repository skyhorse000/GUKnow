package edu.spring.project.persistence;

import java.util.List;

import edu.spring.project.controller.boardPageutil.PageCriteria;
import edu.spring.project.domain.BoardVO;



public interface BoardDAO {
	public abstract List<BoardVO> select();
	public abstract BoardVO select(int bno);
	public abstract int insert(BoardVO vo);
	public abstract int update(BoardVO vo);
	public abstract int delete(int bno);
	public abstract int getTotalNumsOfRecords();
	public abstract List<BoardVO> select(PageCriteria criteria);
	public abstract List<BoardVO> select(String username);
	public abstract List<BoardVO> selectByTitleOrContent(String keyword);
	public abstract int updateReplycnt(int amount, int bno);
}
