package com.book.dao;

import java.util.List;

import com.book.po.Bookinfo;
import com.book.po.Order;
import com.book.po.Remark;
import com.user.po.Userinfo;

public interface BookDao {
 public boolean  login(String username,String userpwd);
	 public List<Bookinfo> findAll();
	 public	void attachDirty(Bookinfo admin);
		public Bookinfo findById(int id);
		public void delete(Bookinfo admin);
	public void add(Bookinfo admin) ;

	public List<Bookinfo> find_query_all(String riName);

	public List<Bookinfo> findAlll(int name);
	public List<Userinfo> finduser();

	public List<Remark> findpinglun(int ibookid);
	public void padd(int o,int ibookid,String xing,String pinglun);
	public void pdelete(Remark bo);
	public Remark findByid(int riId);
	public void payadd(Integer o1, int ibookid, String poss, String address,
			String num);
	public List<Order> payc(Integer o1);
	public Order findbyid(int pingidd);
	public void paydel(Order bo);
}
