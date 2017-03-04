package com.yc.test;

import java.util.List;

import javax.sql.DataSource;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.yc.bean.Users;
import com.yc.biz.UsersBiz;

import junit.framework.TestCase;

public class hrTest extends TestCase{
	@Test
	public void test2(){
		ApplicationContext ac=new ClassPathXmlApplicationContext("beans.xml");
		DataSource ds=(DataSource) ac.getBean("dataSource");
		System.out.println(ds);
		System.out.println(ac.getBean("sqlSessionFactory"));
	}
	
	@Test
	public void test3(){
		ApplicationContext ac=new ClassPathXmlApplicationContext("beans.xml");
		UsersBiz ub = (UsersBiz) ac.getBean("usersBizImpl");
		System.out.println(ub);
//		Users u  = new Users();
//		u.setuName("hqsb");
//		u.setuPassword("111111");
//		ub.login(u);
	}
	
}
