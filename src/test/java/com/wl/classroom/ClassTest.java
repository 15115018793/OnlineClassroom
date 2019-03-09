package com.wl.classroom;

import static org.junit.Assert.*;

import javax.sql.DataSource;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class ClassTest {

	@Test
	public void test() {
		ApplicationContext applicationContext=new ClassPathXmlApplicationContext("spring.xml");
		DataSource dataSource=(DataSource) applicationContext.getBean("dataSource");
		System.out.println(dataSource.getClass());
	}

}
