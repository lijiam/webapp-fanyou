package com.webapp.fanyou.service.impl;

import com.webapp.fanyou.bean.*;
import com.webapp.fanyou.mapper.BackMapper;
import com.webapp.fanyou.service.BackService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;
import java.util.Map;


@Service
public class BackServiceImpl implements BackService {

    @Autowired
    BackMapper backMapper;

    @Override
    public List<User> getAllUsers() {
        return backMapper.getAllUsers();
    }

    @Override
    public Boolean updateUser(Map<String, String> params) {
        return backMapper.updateUser(params) > 0;
    }

    @Override
    public List<Food> getAllFoods() {
        return backMapper.getAllFoods();
    }

    @Override
    public Boolean updateFood(Map<String, String> params) {
        return backMapper.updateFood(params) > 0;
    }

    @Override
    public List<Desk> getAllDesks() {
        return backMapper.getAllDesks();
    }

    @Override
    public Boolean updateDesk(Map<String, String> params) {
        return backMapper.updateDesk(params) > 0;
    }

    @Override
    public List<Stock> getAllStocks() {
        return backMapper.getAllStocks();
    }

    @Override
    public Boolean updateStock(Map<String, String> params) {
        return backMapper.updateStock(params) > 0;
    }

    @Override
    public List<Store> getAllStores() {
        return backMapper.getAllStores();
    }

    @Override
    public Boolean updateStore(Map<String, String> params) {
        return backMapper.updateStore(params) > 0;
    }

    @Override
    public List<Store> getNocheckStores() {
        return backMapper.getNocheckStores();
    }

    @Override
    public Boolean updateStoreCheck(Map<String, String> params) {
        return backMapper.updateStoreCheck(params) > 0;
    }

    @Override
    public List<Order> getAllOrders() {
        return backMapper.getAllOrders();
    }

    @Override
    public List<OrderDetail> getOrderById(String id) {
        return backMapper.getOrderById(id);
    }

    @Override
    public Boolean updateOrderType(Map<String, String> params) {
        return backMapper.updateOrderType(params) > 0;
    }

    @RequestMapping("/getStoreMoneys")
    public List<EchartsData> getStoreMoneys() {
        return backMapper.getStoreMoneys();
    }

    @RequestMapping("/getFoodSell")
    public List<EchartsData> getFoodSell() {
        return backMapper.getFoodSell();
    }

    @RequestMapping("/getDayCount")
    public List<EchartsData> getDayCount() {
        return backMapper.getDayCount();
    }
}
