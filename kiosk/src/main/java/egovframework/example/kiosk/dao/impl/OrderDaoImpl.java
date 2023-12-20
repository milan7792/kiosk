package egovframework.example.kiosk.dao.impl;

import org.springframework.stereotype.Repository;
import org.springframework.beans.factory.annotation.Autowired;
import org.apache.ibatis.session.SqlSession;

import egovframework.example.kiosk.dao.OrderDao;
import egovframework.example.kiosk.vo.OrderVo;

@Repository
public class OrderDaoImpl implements OrderDao {

    private final SqlSession sqlSession;

    @Autowired
    public OrderDaoImpl(SqlSession sqlSession) {
        this.sqlSession = sqlSession;
    }

    @Override
    public void saveOrders(OrderVo order) {
            sqlSession.insert("orderMapper.saveOrders", order);
        }
    }