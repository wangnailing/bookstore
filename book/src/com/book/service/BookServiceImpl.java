package com.book.service;

import java.util.List;

import com.book.po.Bookinfo;
import com.book.po.Order;
import com.book.po.Remark;
import com.book.dao.BookDao;
import com.book.po.Book;
import com.user.po.Userinfo;

public class BookServiceImpl implements BookService{
	private BookDao bookDao;
	
	public BookDao getBookDao() {
		return bookDao;
	} 

	public void setBookDao(BookDao bookDao) {
		this.bookDao = bookDao;
	}
	@Override
	public List<Bookinfo> findAll__(int name) {
		// TODO Auto-generated method stub
		List<Bookinfo> ls = bookDao.findAlll(name);
		return ls;
	}


	@Override
	public boolean login_(String username, String userpwd) {
		// TODO Auto-generated method stub
		boolean flag=false;
	       flag= bookDao.login(username,userpwd);
			return flag;
	}

	@Override
	public List<Userinfo> finduser_() {
		// TODO Auto-generated method stub
		List<Userinfo> ls = bookDao.finduser();
		return ls;
	}

	@Override
	public List<Bookinfo> findAll_() {
		// TODO Auto-generated method stub
		List<Bookinfo> ls = bookDao.findAll();
		return ls;
	}

	@Override
	public Bookinfo findById_(int riId) {
		// TODO Auto-generated method stub
		
		return bookDao.findById(riId);
	}

	@Override
	public boolean update_(Bookinfo admin) {
		// TODO Auto-generated method stub
		boolean flag=true;
		try
		{	
		bookDao.attachDirty(admin);
		}
		catch(Exception ex)
		{
			 flag=false;
			 System.out.println("添加异常"+ex.getMessage());
		}
		return flag;
		
	}

	@Override
	public boolean add_(Bookinfo admin) {
		// TODO Auto-generated method stub
		boolean flag=true;
		try
		{ 
		bookDao.add(admin); 
		}
		catch(Exception ex)
		{
			 flag=false;
			 System.out.println("添加异常"+ex.getMessage());
		}
		return flag;
	}

	@Override
	public boolean delete_(Bookinfo admin) {
		// TODO Auto-generated method stub
		boolean flag=true;
		try
		{	
		bookDao.delete(admin);
		}
		catch(Exception ex)
		{
			 flag=false;
			 System.out.println("删除异常"+ex.getMessage());
		}
		return flag;
		
	}

	@Override
	public List<Bookinfo> find_query_all_(String riName) {
		// TODO Auto-generated method stub
		return bookDao.find_query_all(riName);
	}

	@Override
	public List<Remark> findpingtun(int ibookid) {
		// TODO Auto-generated method stub
		List<Remark> ls = bookDao.findpinglun(ibookid);
		return ls;
	}

	@Override
	public boolean padd_(int o,int ibookid,String xing,String pinglun) {
		// TODO Auto-generated method stub
		boolean flag=true;
		try
		{ 
		bookDao.padd(o,ibookid,xing,pinglun); 
		}
		catch(Exception ex)
		{
			 flag=false;
			 System.out.println("添加异常"+ex.getMessage());
		}
		return flag;
	}

	@Override
	public boolean pdelete_(Remark bo) {
		// TODO Auto-generated method stub
		boolean flag=true;
		try
		{	
		bookDao.pdelete(bo);
		}
		catch(Exception ex)
		{
			 flag=false;
			 System.out.println("删除异常"+ex.getMessage());
		}
		return flag;
	}

	@Override
	public Remark findByid_(int riId) {
		// TODO Auto-generated method stub

		return bookDao.findByid(riId);
	}

	@Override
	public boolean payadd_(Integer o1, int ibookid, String poss, String num,
			String address) {
		// TODO Auto-generated method stub
		boolean flag=true;
		try
		{ 
		bookDao.payadd(o1,ibookid,poss,address,num); 
		}
		catch(Exception ex)
		{
			 flag=false;
			 System.out.println("添加异常"+ex.getMessage());
		}
		return flag;
	}

	@Override
	public List<Order> payc_(Integer o1) {
		// TODO Auto-generated method stub

		return bookDao.payc(o1);
	}

	@Override
	public Order findbyid_(int pingidd) {
		// TODO Auto-generated method stub
		return bookDao.findbyid(pingidd);
	}

	@Override
	public boolean paydel_(Order bo) {
		// TODO Auto-generated method stub
		boolean flag=true;
		try
		{	
		bookDao.paydel(bo);
		}
		catch(Exception ex)
		{
			 flag=false;
			 System.out.println("删除异常"+ex.getMessage());
		}
		return flag;
	}


}
