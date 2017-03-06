package com.yc.biz.impl;

import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import com.yc.bean.HumanFile;
import com.yc.biz.HumanFileBiz;
import com.yc.dao.BasicDao;
@Service
public class HumanFileBizImpl implements HumanFileBiz {
	private BasicDao basicDao;
	@Resource(name="basicDaoImpl")
	public void setBasicDao(BasicDao basicDao) {
		this.basicDao = basicDao;
	}
	
	
	@Override
	public HumanFile humanFileRegister(HumanFile humanFile) {
		Logger.getLogger(getClass()).info("humanFile...");
		this.basicDao.insert(humanFile, "insertSelective");
		return humanFile;
	}


	@Override
	public List<HumanFile> humanFileList(HumanFile humanFile) {
		List<HumanFile> list= this.basicDao.select(humanFile, "selectByPrimaryKey");
		return list;
	}

}
