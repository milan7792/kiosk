package egovframework.example.kiosk.service.impl;

import egovframework.example.kiosk.dao.KioskDao;
import egovframework.example.kiosk.service.KioskService;
import egovframework.example.kiosk.vo.KioskVo;
import egovframework.example.kiosk.vo.OrderVo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class KioskServiceImpl implements KioskService {

    @Autowired
    private KioskDao kioskDao;

	@Override
	public List<KioskVo> selectMenuList(KioskVo kioskVo) throws Exception { 
		return kioskDao.selectMenuList(kioskVo); 	
	}
	
}
