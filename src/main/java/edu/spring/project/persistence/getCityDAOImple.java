package edu.spring.project.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.spring.project.domain.ScheduleValue;

@Repository
public class getCityDAOImple implements getCityDAO {
	private static final String NAMESPACE =
			"edu.spring.project.CityListMapper";
	
	private static final Logger logger = 
			LoggerFactory.getLogger(getCityDAOImple.class);
	
	// MyBatis�� SqlSession�� ����ϱ� ���ؼ�
		// ������ �����ӿ�ũ�� ������ bean�� ����(injection)����
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<ScheduleValue> getCityList(){
		logger.info("getCityList ȣ��");
		return sqlSession.selectList(NAMESPACE+".map_city_list");
	}
	
	
	
}
