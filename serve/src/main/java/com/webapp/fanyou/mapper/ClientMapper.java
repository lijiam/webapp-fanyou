package com.webapp.fanyou.mapper;

import com.webapp.fanyou.bean.Food;
import com.webapp.fanyou.bean.Store;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

@Mapper
public interface ClientMapper {
    List<Store> getAllStores();
    Store getStoreById(@Param("id") String id);
    List<Food> getAllFoods();
    int newStore(Map<String, String> params);
}
