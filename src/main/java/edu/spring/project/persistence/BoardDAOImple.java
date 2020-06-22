package edu.spring.project.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.spring.project.controller.boardPageutil.PageCriteria;
import edu.spring.project.domain.BoardVO;


@Repository // @Component
//- 영속 계층(Persistence Layer)의 DB 관련 기능을 담당
//- Spring component bean으로 등록함
//- 스프링 프레임워크가 bean을 생성하기 위해서는
//root-context.xml에 bean으로 등록해야 함
//- <context:component-scan ... />
public class BoardDAOImple implements BoardDAO {
	private static final String NAMESPACE = "edu.spring.project.BoardMapper";
	private static final Logger logger =
			LoggerFactory.getLogger(BoardDAOImple.class);
	
	// MyBatis의 SqlSession을 사용하기 위해서
	// 스프링 프레임워크가 생성한 bean을 주입(injection)받음
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<BoardVO> select() {
		logger.info("select() 호출");
		return sqlSession.selectList(NAMESPACE+".select_all");
		// .select_all : board-mapper.xml의 id와 매칭
	}

	@Override
	public BoardVO select(int bno) {
		logger.info("select() 호출 : bno = " + bno);
		return sqlSession.selectOne(NAMESPACE + ".select_by_bno", bno);
	}

	@Override
	public int insert(BoardVO vo) {
		logger.info("insert() 호출");
		return sqlSession.insert(NAMESPACE + ".insert", vo);
	}

	@Override
	public int update(BoardVO vo) {
		logger.info("update() 호출");
		return sqlSession.update(NAMESPACE + ".update", vo);
	}

	@Override
	public int delete(int bno) {
		logger.info("delete() 호출");
		return sqlSession.delete(NAMESPACE + ".delete", bno);
	}
	
	@Override
	public int getTotalNumsOfRecords() {
		logger.info("getTotalNumsOfRecords() 호출");
		return sqlSession.selectOne(NAMESPACE + ".total_count");
	}
	
	@Override
	public List<BoardVO> select(PageCriteria criteria) {
		logger.info("select() 호출 : page = " + criteria.getPage());
		return sqlSession.selectList(NAMESPACE + ".paging", criteria);
	}

	@Override
	public List<BoardVO> select(String username) {
		logger.info("select() 호출 : username = " + username);
		username = "%" + username + "%";
		return sqlSession.selectList(NAMESPACE + ".select_by_username", username);
	}

	@Override
	public List<BoardVO> selectByTitleOrContent(String keyword) {
		keyword = "%" + keyword + "%";
		return sqlSession.selectList(NAMESPACE + ".select_by_title_content", keyword);
	}
	
	@Override
	public int updateReplycnt(int amount, int bno) {
		Map<String, Integer> args = new HashMap<String, Integer>();
		args.put("amount", amount);
		args.put("bno", bno);
		
		return sqlSession.update(NAMESPACE + ".update_replycnt", args);
	}


}
