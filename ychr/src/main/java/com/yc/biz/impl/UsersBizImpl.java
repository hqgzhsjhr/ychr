package com.yc.biz.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.yc.biz.UsersBiz;
import com.yc.dao.BasicDao;

@Service
public class UsersBizImpl implements UsersBiz{
	private BasicDao basicDao;
	@Resource(name="basicDaoImpl")
	public void setBasicDao(BasicDao basicDao) {
		this.basicDao = basicDao;
	}
}
