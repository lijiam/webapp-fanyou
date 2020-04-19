package com.webapp.fanyou.service.impl;

import com.webapp.fanyou.bean.*;
import com.webapp.fanyou.mapper.ClientMapper;
import com.webapp.fanyou.service.ClientService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;

@Service
public class ClientServiceImpl implements ClientService {

    @Autowired
    ClientMapper clientMapper;

    @Override
    public List<Store> getAllStores() {
        return clientMapper.getAllStores();
    }

    @Override
    public Store getStoreById(String id) {
        return clientMapper.getStoreById(id);
    }

    @Override
    public List<Food> getAllFoods() {
        return clientMapper.getAllFoods();
    }

    @Override
    public Boolean newStore(Map<String, String> params) {
        return clientMapper.newStore(params) > 0;
    }

    @Override
    public Boolean addToShopCar(Map<String, String> params) {
        return clientMapper.addToShopCar(params) > 0;
    }

    @Override
    public Boolean jianShopNum(Map<String, String> params) {
        return clientMapper.jianShopNum(params) > 0;
    }

    @Override
    public List<ShopCar> getShopCarData(Map<String, String> params) {
        return clientMapper.getShopCarData(params);
    }

    @Override
    public Boolean payOrder(Map<String, String> params) {
        List<ShopCar> shops = clientMapper.getShopCarData((params));
        String uuid = UUID.randomUUID().toString();
        ArrayList list = new ArrayList();
        if (clientMapper.deleteFromShopCar(params) > 0) {
            // 插入一条数据
            params.put("uuid", uuid);
            int a = clientMapper.addNewOrder(params);
            if (a > 0) {
                for (int i = 0, len = shops.size(); i < len; i++) {
                    Map<String, String> map = new HashMap<>();
                    map.put("uuid", uuid);
                    map.put("food_id", shops.get(i).getFoodid());
                    map.put("food_number", String.valueOf(shops.get(i).getFoodnum()));
                    list.add(map);
                }
                return clientMapper.addNewOrderDetail(list) > 0;
            } else return false;
        }
        return false;
    }

    @Override
    public List<OneOrder> getAllOrders(Map<String, String> params) {
        return clientMapper.getAllOrders(params);
    }

    @Override
    public List<ShopCar> getOrderDetail(Map<String, String> params) {
        return clientMapper.getOrderDetail(params);
    }

    @Override
    public Boolean sendOrderPinjia(Map<String, String> params) {
        return clientMapper.sendOrderPinjia(params) > 0;
    }

    @Override
    public Boolean doExitOrder(Map<String, String> params) {
        return clientMapper.doExitOrder(params) > 0;
    }
}
