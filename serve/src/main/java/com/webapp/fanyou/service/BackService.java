package com.webapp.fanyou.service;


import com.webapp.fanyou.bean.*;

import java.util.List;
import java.util.Map;

public interface BackService {

    List<User> getAllUsers();

    Boolean updateUser(Map<String, String> params);

    List<Food> getAllFoods();

    Boolean updateFood(Map<String, String> params);

    List<Desk> getAllDesks();

    Boolean updateDesk(Map<String, String> params);

    List<Stock> getAllStocks();

    Boolean updateStock(Map<String, String> params);

    List<Store> getAllStores();

    Boolean updateStore(Map<String, String> params);

    List<Store> getNocheckStores();

    Boolean updateStoreCheck(Map<String, String> params);

    List<Order> getAllOrders();

    List<OrderDetail> getOrderById(String id);

    Boolean updateOrderType(Map<String, String> params);

    List<EchartsData> getStoreMoneys();
    List<EchartsData> getFoodSell();
    List<EchartsData> getDayCount();
}

