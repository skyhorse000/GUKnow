package edu.spring.project.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.spring.project.domain.PlanDayListVO;

@Repository
public class planDayListDAOImple implements planDayListDAO {
	private static final String NAMESPACE = 
			"edu.spring.project.planDayListMapper";
	private static final Logger logger =
			LoggerFactory.getLogger(planDayListDAOImple.class);
	
	
	@Autowired
	private SqlSession sqlSession;


	@Override
	public int insert(PlanDayListVO vo) {
		logger.info("DAO »£√‚"+ vo);
		return sqlSession.insert(NAMESPACE+".add_plan_city", vo);
	}


	@Override
	public List<PlanDayListVO> read(int pn_srl) {
		logger.info("DAO read : pn_srl" + pn_srl);
		return sqlSession.selectList(NAMESPACE+".get_plan_city", pn_srl);
	}
	
	
	
	
}
