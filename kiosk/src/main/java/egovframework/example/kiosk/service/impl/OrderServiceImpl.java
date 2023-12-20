package egovframework.example.kiosk.service.impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import egovframework.example.kiosk.dao.OrderDao;
import egovframework.example.kiosk.service.OrderService;
import egovframework.example.kiosk.vo.OrderVo;

@Service
public class OrderServiceImpl implements OrderService {

    private final OrderDao orderDao;

    public OrderServiceImpl(OrderDao orderDao) {
        this.orderDao = orderDao;
    }

    @Override
    public void saveOrders(OrderVo order){
        orderDao.saveOrders(order);
    }
}
