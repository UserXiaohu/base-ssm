package com.ssm.demo.service;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ssm.demo.mapper.UserMapper;
import com.ssm.demo.pojo.UserInf;
@Service("userService")
public class UserServiceImpl implements UserService {

	private UserMapper userMapper;

	@Resource(name = "userMapper")
	public void setUserMapper(UserMapper userMapper) {
		this.userMapper = userMapper;
	}

	@Override
	public ArrayList<UserInf> getAllUsers() {

		return userMapper.getAllUsers();
	}

}
