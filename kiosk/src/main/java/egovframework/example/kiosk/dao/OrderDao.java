package egovframework.example.kiosk.dao;

import egovframework.example.kiosk.vo.OrderVo;

public interface OrderDao {
	
    void saveOrders(OrderVo order);
}
