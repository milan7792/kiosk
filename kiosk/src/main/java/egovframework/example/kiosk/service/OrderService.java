package egovframework.example.kiosk.service;

import org.springframework.stereotype.Service;

import egovframework.example.kiosk.vo.OrderVo;

@Service
public interface OrderService {
    void saveOrders(OrderVo order);
}
