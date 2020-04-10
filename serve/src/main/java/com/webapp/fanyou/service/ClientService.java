package com.webapp.fanyou.service;

import com.webapp.fanyou.bean.Food;
import com.webapp.fanyou.bean.Store;

import java.util.List;
import java.util.Map;

public interface ClientService {

    List<Store> getAllStores();
    Store getStoreById(String id);
    List<Food> getAllFoods();
    Boolean newStore(Map<String, String> params);
}
