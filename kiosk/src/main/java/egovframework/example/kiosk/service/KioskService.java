package egovframework.example.kiosk.service;

import egovframework.example.kiosk.vo.KioskVo;
import egovframework.example.kiosk.vo.OrderVo;

import java.util.List;

public interface KioskService {
	
	public List<KioskVo> selectMenuList(KioskVo kioskVo) throws Exception;
		
}
