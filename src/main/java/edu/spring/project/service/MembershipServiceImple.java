package edu.spring.project.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.spring.project.domain.MembershipVO;
import edu.spring.project.persistence.MembershipDAO;

@Service
public class MembershipServiceImple implements MembershipService {
	private static final Logger logger = LoggerFactory.getLogger(MembershipServiceImple.class);

	@Autowired
	private MembershipDAO membershipDao;

	@Override
	public MembershipVO loginCheck(MembershipVO vo) {
		return membershipDao.loginCheck(vo);
	}

	@Override
	public List<MembershipVO> read() {
		logger.info("read() 호출 ");
		return membershipDao.select();
	}

	@Override
	public MembershipVO read(String email) {
		logger.info("read() 호출 : email = " + email);
		return membershipDao.select(email);
	}

	@Override
	public int create(MembershipVO vo) {
		logger.info("create() 호출 ");
		return membershipDao.insert(vo);
	}

	@Override
	public int update(MembershipVO vo) {
		logger.info("update() 호출 ");
		return membershipDao.update(vo);
	}

	@Override
	public int delete(MembershipVO vo) {
		logger.info("delete() 호출 ");
		return membershipDao.delete(vo);
	}

}
