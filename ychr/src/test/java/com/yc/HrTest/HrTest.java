package com.yc.HrTest;

import java.util.List;

import javax.sql.DataSource;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.yc.bean.HumanFile;
import com.yc.biz.HumanFileBiz;

import junit.framework.TestCase;

public class HrTest extends TestCase{
	@Test
	public void test2(){
		ApplicationContext ac=new ClassPathXmlApplicationContext("beans.xml");
		DataSource ds=(DataSource) ac.getBean("dataSource");
		System.out.println(ds);
		System.out.println(ac.getBean("sqlSessionFactory"));
	}
	@Test
	public void test(){
		ApplicationContext ac=new ClassPathXmlApplicationContext("beans.xml");
		HumanFileBiz ds=(HumanFileBiz) ac.getBean("humanFileBizImpl");
		HumanFile humanFile=new HumanFile();
		humanFile.setHumanTelephone("18765473456");
		ds.humanFileRegister(humanFile);
	}
	@Test
	public void test3(){
		ApplicationContext ac=new ClassPathXmlApplicationContext("beans.xml");
		HumanFileBiz ds=(HumanFileBiz) ac.getBean("humanFileBizImpl");
		HumanFile humanFile=new HumanFile();
		List<HumanFile> list=ds.humanFileList(humanFile);
		for (HumanFile humanFile2 : list) {
			System.out.println(humanFile2.toString());
		}
	}

}
