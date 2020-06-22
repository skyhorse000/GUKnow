package edu.spring.project.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import edu.spring.project.domain.ReplyVO;
import edu.spring.project.persistence.BoardDAO;
import edu.spring.project.persistence.ReplyDAO;

@Service
public class ReplyServiceImple implements ReplyService {
	private static final Logger logger = LoggerFactory.getLogger(ReplyServiceImple.class);

	@Autowired
	private ReplyDAO replyDao;
	@Autowired
	private BoardDAO boardDao;

	// @Transactional
	// - 두 개의 데이터베이스 변경이 생길 때
	// 위의 내용이 실행되었고, 아래 내용이 에러가 발생하면
	// 위의 내용은 rollback 되어야 한다.
	// 이러한 기능을 해주는게 Transactional 어노테이션이다.

	@Transactional
	// root-context.xml 에서 설정한 transactionManager를 weaving
	@Override
	public int create(ReplyVO vo) throws Exception {
		logger.info("vo bno" + vo.getBno());
		replyDao.insert(vo);
		logger.info("댓글 입력 성공");

		boardDao.updateReplycnt(1, vo.getBno());
		logger.info("게시판 댓글 개수 업데이트 성공");
		return 1;
	}

	@Override
	public List<ReplyVO> read(int bno) {
		return replyDao.select(bno);
	}

	@Override
	public int update(ReplyVO vo) {
		return replyDao.update(vo);
	}

	@Transactional
	@Override
	public int delete(int rno, int bno) throws Exception {
		replyDao.delete(rno);
		logger.info("댓글 삭제 성공");

		boardDao.updateReplycnt(-1, bno);
		logger.info("게시판 댓글 개수 업데이트 성공");
		return 1;
	}

}
