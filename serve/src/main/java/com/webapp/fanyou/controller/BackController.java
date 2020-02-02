package com.webapp.fanyou.controller;

import com.webapp.fanyou.bean.*;
import com.webapp.fanyou.service.BackService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Map;

@RestController
@RequestMapping(value = "/api/back")
public class BackController {

    @Autowired
    BackService backService;

    @RequestMapping("/getAllUsers")
    public List<User> getAllUsers() {
        return backService.getAllUsers();
    }

    @RequestMapping("/updateUser")
    public Boolean updateUser(@RequestBody Map<String,String> params) {
        return backService.updateUser(params);
    }

    @RequestMapping("/getAllFoods")
    public List<Food> getAllFoods() {
        return backService.getAllFoods();
    }

    @RequestMapping("/updateFood")
    public Boolean updateFood(@RequestBody Map<String,String> params) {
        return backService.updateFood(params);
    }

    @RequestMapping("/getAllDesks")
    public List<Desk> getAllDesks() {
        return backService.getAllDesks();
    }

    @RequestMapping("/updateDesk")
    public Boolean updateDesk(@RequestBody Map<String,String> params) {
        return backService.updateDesk(params);
    }

    @RequestMapping("/getAllStocks")
    public List<Stock> getAllStocks() {
        return backService.getAllStocks();
    }

    @RequestMapping("/updateStock")
    public Boolean updateStock(@RequestBody Map<String,String> params) {
        return backService.updateStock(params);
    }

    @RequestMapping("/getAllStores")
    public List<Store> getAllStores() {
        return backService.getAllStores();
    }

    @RequestMapping("/updateStore")
    public Boolean updateStore(@RequestBody Map<String,String> params) {
        return backService.updateStore(params);
    }

    @RequestMapping("/getNocheckStores")
    public List<Store> getNocheckStores() {
        return backService.getNocheckStores();
    }

    @RequestMapping("/updateStoreCheck")
    public Boolean updateStoreCheck(@RequestBody Map<String,String> params) {
        return backService.updateStoreCheck(params);
    }

    @RequestMapping("/getAllOrders")
    public List<Order> getAllOrders() {
        return backService.getAllOrders();
    }

    @RequestMapping("/getOrderById")
    public List<OrderDetail> getOrderById(String id) {
        return backService.getOrderById(id);
    }

    @RequestMapping("/updateOrderType")
    public Boolean updateOrderType(@RequestBody Map<String,String> params) {
        return backService.updateOrderType(params);
    }

}
