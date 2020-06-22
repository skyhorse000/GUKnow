package edu.spring.project.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.spring.project.domain.MemberVO;
import edu.spring.project.domain.PlanInfoVO;

@Repository
public class AddPlanDAOImple implements AddPlanDAO{
	private static final String NAMESPACE =
			"edu.spring.project.AddPlanMapper";
	
	private static final Logger logger = 
			LoggerFactory.getLogger(AddPlanDAOImple.class);
	
	
	@Autowired SqlSession sqlSession;

	@Override
	public int AddPlan(MemberVO vo) {		
		
		return sqlSession.insert(NAMESPACE+".add_plan_member", vo);
		
	
	}

	@Override
	public int InfoInsert(PlanInfoVO vo) {
		
		return sqlSession.insert(NAMESPACE+".add_plan_info", vo);
	}

	@Override
	public int InfoUpdate(int pn_srl, String pn_title) {
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("pn_srl", pn_srl);
		map.put("pn_title", pn_title);
		
		
		return sqlSession.update(NAMESPACE+".set_plan_info", map);
	}

	
	@Override
	public List<PlanInfoVO> InfoSelect(int pn_srl) {
		
		return sqlSession.selectList(NAMESPACE+".get_plan_info", pn_srl);
	}

	@Override
	public int InfoUpdateCom(int pn_srl, int pn_complete) {
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("pn_srl", pn_srl);
		map.put("pn_complete", pn_complete);
		
		
		return sqlSession.update(NAMESPACE+".set_plan_info_com", map);
	}
	

	@Override
	public int UrlSelectChk(int pn_srl) {
		logger.info("DAO : " + pn_srl);
		return sqlSession.selectOne(NAMESPACE+".url_check", pn_srl);
	}

	@Override
	public int deletePlanAll(int pn_srl) {
		
		logger.info("DAO ½ÇÇà : " + pn_srl);
		
		return sqlSession.delete(NAMESPACE+".delete_plan_all", pn_srl);
	}

	
}
