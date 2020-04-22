package com.webapp.fanyou.controller;

import com.webapp.fanyou.bean.*;
import com.webapp.fanyou.service.ClientService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Map;

@RestController
@RequestMapping(value = "/api/client")
public class ClientController {

    @Autowired
    ClientService clientService;

    @RequestMapping("/getAllStores")
    public List<Store> getAllStores() {
        return clientService.getAllStores();
    }

    @RequestMapping("/getStoreById")
    public Store getStoreById(@RequestBody Map<String, String> params) {
        return clientService.getStoreById(params.get("id"));
    }

    @RequestMapping("/getAllFoods")
    public List<Food> getAllFoods(@RequestBody Map<String, String> params) {
        return clientService.getAllFoods(params);
    }

    @RequestMapping("/newStore")
    public Boolean newStore(@RequestBody Map<String, String> params) {
        return clientService.newStore(params);
    }

    @RequestMapping("/addToShopCar")
    public Boolean addToShopCar(@RequestBody Map<String, String> params) {
        return clientService.addToShopCar(params);
    }

    @RequestMapping("/jianShopNum")
    public Boolean jianShopNum(@RequestBody Map<String, String> params) {
        return clientService.jianShopNum(params);
    }

    @RequestMapping("/getShopCarData")
    public List<ShopCar> getShopCarData(@RequestBody Map<String, String> params) {
        return clientService.getShopCarData(params);
    }

    @RequestMapping("/payOrder")
    public Boolean payOrder(@RequestBody Map<String, String> params) {
        return clientService.payOrder(params);
    }

    @RequestMapping("/getAllOrders")
    public List<OneOrder> getAllOrders(@RequestBody Map<String, String> params) {
        return clientService.getAllOrders(params);
    }

    @RequestMapping("/getOrderDetail")
    public List<ShopCar> getOrderDetail(@RequestBody Map<String, String> params) {
        return clientService.getOrderDetail(params);
    }

    @RequestMapping("/sendOrderPinjia")
    public Boolean sendOrderPinjia(@RequestBody Map<String, String> params) {
        return clientService.sendOrderPinjia(params);
    }

    @RequestMapping("/doExitOrder")
    public Boolean doExitOrder(@RequestBody Map<String, String> params) {
        return clientService.doExitOrder(params);
    }


}
