package egovframework.example.kiosk.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import egovframework.example.kiosk.service.OrderService;
import egovframework.example.kiosk.vo.OrderVo;

@RestController
public class OrderController {

    private final OrderService orderService;

    public OrderController(OrderService orderService) {
        this.orderService = orderService;
    }

    @PostMapping("/saveOrders")
    @ResponseBody
    public ResponseEntity<String> saveOrders(@RequestBody OrderVo order){
        orderService.saveOrders(order);
        return ResponseEntity.ok("Orders saved successfully");
    }
}
