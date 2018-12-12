package com.ssm.demo.controller;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ssm.demo.pojo.UserInf;
import com.ssm.demo.service.UserService;

@Controller
public class UserController {
	private UserService userService;
	
	@Resource(name = "userService")
	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	@RequestMapping("/showUsers")
	public ModelAndView showUsers() {
		ModelAndView mv = null;
		try {
			mv = new ModelAndView("show");
			ArrayList<UserInf> users = userService.getAllUsers();
			//System.out.println(users.size());
			mv.addObject("date",users);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}
}
