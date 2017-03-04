package com.yc.biz.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.yc.bean.Users;
import com.yc.biz.UsersBiz;
import com.yc.dao.BasicDao;
@Service
public class UsersBizImpl implements UsersBiz {
	private  BasicDao basicDao;
	@Resource
	public void setBasicDao(BasicDao basicDao) {
		this.basicDao = basicDao;
	}
	@Override
	public Users login(Users users) {
		
		//this.basicDao.select(users, "selectByNameAndPwd");
		return users;
	}
	@Override
	public Users insert(Users users) {
	//	this.basicDao.insert(users, "insert");
		return users;
	}

}
