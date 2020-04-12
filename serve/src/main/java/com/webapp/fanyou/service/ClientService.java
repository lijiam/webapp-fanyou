package com.webapp.fanyou.service;

import com.webapp.fanyou.bean.*;

import java.util.List;
import java.util.Map;

public interface ClientService {

    List<Store> getAllStores();
    Store getStoreById(String id);
    List<Food> getAllFoods();
    Boolean newStore(Map<String, String> params);
    Boolean addToShopCar(Map<String, String> params);
    Boolean jianShopNum(Map<String, String> params);
    List<ShopCar> getShopCarData(Map<String, String> params);
    Boolean payOrder(Map<String, String> params);
    List<OneOrder> getAllOrders(Map<String, String> params);
    List<ShopCar> getOrderDetail(Map<String, String> params);
    Boolean sendOrderPinjia(Map<String, String> params);
}
