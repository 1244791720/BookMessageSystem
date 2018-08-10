package com.shuangyulin.test;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Test;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Service;

import com.shuangyulin.mapper.AdminMapper;
import com.shuangyulin.mapper.BookMapper;
import com.shuangyulin.mapper.BookTypeMapper;
import com.shuangyulin.po.Admin;
import com.shuangyulin.po.Book;
import com.shuangyulin.po.BookType;

@Service
public class TestDao {
	public static SqlSession openSqlSession() {
		org.springframework.context.ApplicationContext ac = new ClassPathXmlApplicationContext("classpath:spring/applicationContext-dao.xml");
		SqlSessionFactory sf = (SqlSessionFactory) ac.getBean("sqlSessionFactory");
		
		SqlSession sq = sf.openSession();
		return sq;
	}
	
	public static void main(String[] args) throws Exception {
		SqlSession sq = openSqlSession();
		AdminMapper am = sq.getMapper(AdminMapper.class);
		
		Admin a = am.findAdminByUserName("a");
		
		String s = a.getPassword();
		
		System.out.println(s);
		
	}
	
	@Test
	public void testBookMapper() throws Exception {
		SqlSession sq = openSqlSession();
		BookMapper bm = sq.getMapper(BookMapper.class);
		
		Book b = bm.getBook("TS001");
		sq.commit();
		sq.close();
		
		System.out.println(b);
	}
	
	@Test
	public void testBookTypeMapper() throws Exception {
		SqlSession sq = openSqlSession();
		BookTypeMapper btm= sq.getMapper(BookTypeMapper.class);
		BookType b = btm.findBookTypeById(2);
		System.out.println(b);
	}
}
