package com.yc.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yc.biz.UsersBiz;
@Controller
public class UserController {
	private UsersBiz usersBiz;
	@Resource(name="usersBizImpl")
	public void setUsersBiz(UsersBiz usersBiz) {
		this.usersBiz = usersBiz;
	}
	
	@RequestMapping(value="/login.action")  
	public String show(){
		return "login";
	}

}
