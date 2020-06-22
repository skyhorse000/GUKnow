package edu.spring.project.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.spring.project.domain.MembershipVO;

@Repository
public class MembershipDAOImple implements MembershipDAO {
	private static final String NAMESPACE = "edu.spring.project.MembershipMapper";
	private static final Logger logger = LoggerFactory.getLogger(MembershipDAOImple.class);

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public MembershipVO loginCheck(MembershipVO vo) {
		logger.info("loginCheck() 호출 : email : " + vo.getEmail() + ", pw : " + vo.getPassword());
		return sqlSession.selectOne(NAMESPACE + ".login", vo);
	}


	@Override
	public List<MembershipVO> select() {
		logger.info("select() 호출");
		return sqlSession.selectList(NAMESPACE + ".select_all");
	}

	@Override
	public MembershipVO select(String email) {
		logger.info("select() 호출 : email = " + email);
		email = "%" + email + "%";
		return (MembershipVO) sqlSession.selectList(NAMESPACE + ".select_by_email", email);
	}

	@Override
	public int insert(MembershipVO vo) {
		logger.info("insert() 호출");
		return sqlSession.insert(NAMESPACE + ".insert", vo);
	}

	@Override
	public int update(MembershipVO vo) {
		logger.info("update() 호출");
		return sqlSession.update(NAMESPACE + ".update", vo);
	}

	@Override
	public int delete(MembershipVO vo) {
		logger.info("delete() 호출");
		return sqlSession.delete(NAMESPACE + ".delete", vo);
	}

}
