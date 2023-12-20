package egovframework.example.kiosk.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import egovframework.example.kiosk.service.KioskService;
import egovframework.example.kiosk.vo.KioskVo;

import egovframework.example.kiosk.vo.OrderVo;

@Controller
public class KioskController {

// 메뉴 조회
@Autowired 
private KioskService kioskService;
	
    @RequestMapping(value="/kiosk")
    public String kioskPage(KioskVo kioskVo, Model model) throws Exception {
    	
		model.addAttribute("selectMenuList", kioskService.selectMenuList(kioskVo));
    	
        return "kiosk";
    }
    
    @RequestMapping(value="/manager")
    public String managerPage() {
        return "manager";
    }

}
