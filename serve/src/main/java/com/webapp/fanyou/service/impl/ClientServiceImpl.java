package com.webapp.fanyou.service.impl;

import com.webapp.fanyou.bean.Food;
import com.webapp.fanyou.bean.Store;
import com.webapp.fanyou.mapper.ClientMapper;
import com.webapp.fanyou.service.ClientService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

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
}
