package com.webapp.fanyou.mapper;

import com.webapp.fanyou.bean.*;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Mapper
public interface ClientMapper {
    List<Store> getAllStores();
    Store getStoreById(@Param("id") String id);
    List<Food> getAllFoods(Map<String, String> params);
    int newStore(Map<String, String> params);
    int addToShopCar(Map<String, String> params);
    int jianShopNum(Map<String, String> params);
    List<ShopCar> getShopCarData(Map<String, String> params);
    int deleteFromShopCar(Map<String, String> params);
    int addNewOrder(Map<String, String> params);
    int addNewOrderDetail(ArrayList list);
    List<OneOrder> getAllOrders(Map<String, String> params);
    List<ShopCar> getOrderDetail(Map<String, String> params);
    int sendOrderPinjia(Map<String, String> params);
    int doExitOrder(Map<String, String> params);
    int addStoreMoney(Map<String, String> params);
    int deleteStoreMoney(Map<String, String> params);

}
