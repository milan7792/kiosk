package egovframework.example.kiosk.dao;

import egovframework.example.kiosk.vo.KioskVo;
import egovframework.example.kiosk.vo.OrderVo;

import java.util.List;

public interface KioskDao {
	
	// 메뉴 조회
	public List<KioskVo> selectMenuList(KioskVo kioskVo) throws Exception;
	
}
