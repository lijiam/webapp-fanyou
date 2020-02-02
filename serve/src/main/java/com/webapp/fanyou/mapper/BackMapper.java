package com.webapp.fanyou.mapper;

import com.webapp.fanyou.bean.*;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;


@Mapper
public interface BackMapper {

    List<User> getAllUsers();

    int updateUser(Map<String, String> params);

    List<Food> getAllFoods();

    int updateFood(Map<String, String> params);

    List<Desk> getAllDesks();

    int updateDesk(Map<String, String> params);

    List<Stock> getAllStocks();

    int updateStock(Map<String, String> params);

    List<Store> getAllStores();

    int updateStore(Map<String, String> params);

    List<Store> getNocheckStores();

    int updateStoreCheck(Map<String, String> params);

    List<Order> getAllOrders();

    List<OrderDetail> getOrderById(@Param("id") String id);

    int updateOrderType(Map<String, String> params);
}
