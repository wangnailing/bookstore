package com.book.service;

import java.util.List;

import com.book.po.Bookinfo;
import com.book.po.Book;
import com.book.po.Order;
import com.book.po.Remark;
import com.user.po.Userinfo;

public interface BookService {
    public  boolean login_(String username,String userpwd); 
	public List<Bookinfo> findAll_();
	public Bookinfo findById_(int ri_id);
	public boolean update_(Bookinfo b);
	public boolean add_(Bookinfo admin);
	public boolean delete_(Bookinfo bo);
	public List<Bookinfo> find_query_all_(String ri_name);
	public List<Bookinfo> findAll__(int name);
	public List<Userinfo> finduser_();
	public List<Remark> findpingtun(int ibookid);
	public Remark findByid_(int ri_id);
	public boolean pdelete_(Remark bo);
	boolean  padd_(int o, int ibookid, String xing, String pinglun);
	public boolean payadd_(Integer o1, int ibookid, String poss, String num,
			String address);
	public List<Order> payc_(Integer o1);
	public Order findbyid_(int pingidd);
	public boolean paydel_(Order bo);

}
