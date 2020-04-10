package com.webapp.fanyou.controller;

import com.webapp.fanyou.bean.Food;
import com.webapp.fanyou.bean.Store;
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
    public List<Food> getAllFoods() {
        return clientService.getAllFoods();
    }

    @RequestMapping("/newStore")
    public Boolean newStore(@RequestBody Map<String, String> params) {
        return clientService.newStore(params);
    }

}
