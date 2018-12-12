package com.ssm.demo.mapper;

import java.util.*;

import org.springframework.stereotype.Repository;

import com.ssm.demo.pojo.UserInf;

@Repository("userMapper")
public interface UserMapper {
	ArrayList<UserInf> getAllUsers();
}
