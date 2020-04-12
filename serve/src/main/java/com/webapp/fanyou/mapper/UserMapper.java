package com.webapp.fanyou.mapper;

import com.webapp.fanyou.bean.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

@Mapper
public interface UserMapper {
    User login(Map<String, String> params);
    List<User> checkUserName(@Param("name") String name);
    int register(Map<String, String> params);
    int updatePassword(Map<String, String> params);
    int updateLoginTime(@Param("id") String id);
    int getMaxUserId();
}
