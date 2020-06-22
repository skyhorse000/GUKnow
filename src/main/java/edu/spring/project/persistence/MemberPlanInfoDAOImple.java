package edu.spring.project.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.spring.project.domain.MemberVO;

@Repository
public class MemberPlanInfoDAOImple implements MemberPlanInfoDAO {
	private static final String NAMESPACE =
	"edu.spring.project.MemberInfoMapper";
	
	private static final Logger logger = 
			LoggerFactory.getLogger(MemberPlanInfoDAOImple.class);
	
	@Autowired SqlSession sqlSesion;
	
	@Override
	public List<MemberVO> MemberinfoSelect(MemberVO vo) {
		logger.info("DAO »£√‚");
				
		return sqlSesion.selectList(NAMESPACE+".get_member_info", vo);
	}
	
}
