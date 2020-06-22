package edu.spring.project.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.spring.project.domain.GetPlanInspotVO;

@Repository
public class PlanInspotDAOImple implements PlanInspotDAO{
	private static final String NAMESPACE =
			"edu.spring.project.PlanInspotMapper";
	
	private static final Logger logger = 
			LoggerFactory.getLogger(AddPlanDAOImple.class);
	
	@Autowired SqlSession sqlSession;
	
	@Override
	public int upsert(GetPlanInspotVO vo) {
		
		return sqlSession.update(NAMESPACE+".Plan_inspot", vo);
	}

	
	@Override
	public List<GetPlanInspotVO> select(int pn_srl, int set_day) {
		Map<String, Object> map = new HashMap<String, Object>();

		map.put("pn_srl", pn_srl);

		map.put("set_day", set_day);
		
		
		logger.info("get : pn_srl" + pn_srl + " get set_day : " + set_day);
		
		
		return sqlSession.selectList(NAMESPACE+".get_inspot_list", map);
	}


	@Override
	public int delete(int pn_srl, int set_day) {
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("pn_srl", pn_srl);
		map.put("set_day", set_day);
		
		
		return sqlSession.delete(NAMESPACE+".del_inspot_list", map);
	}
	
	

}
