package egovframework.example.kiosk.dao.impl;

import egovframework.example.kiosk.dao.KioskDao;
import egovframework.example.kiosk.vo.KioskVo;
import egovframework.example.kiosk.vo.OrderVo;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public class KioskDaoImpl implements KioskDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public List<KioskVo> selectMenuList(KioskVo kioskVo) throws Exception {
		return sqlSession.selectList("egovframework.example.kiosk.dao.KioskDao.selectMenuList", kioskVo);
	}
	
}