package com.ssm.demo.pojo;

import java.io.Serializable;
import java.util.Date;

public class UserInf implements Serializable {
	private int id;
	private String name;
	private int age;
	private Date brithday;
	private UserType type;

	public UserInf() {
		super();
	}

	public UserInf(int id, String name, int age, Date brithday) {
		super();
		this.id = id;
		this.name = name;
		this.age = age;
		this.brithday = brithday;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public Date getBrithday() {
		return brithday;
	}

	public void setBrithday(Date brithday) {
		this.brithday = brithday;
	}

	public UserType getType() {
		return type;
	}

	public void setType(UserType type) {
		this.type = type;
	}

}
