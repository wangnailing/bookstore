package com.cart.dao;

import java.util.List;

import com.book.po.Bookinfo;
import com.book.po.Book;
import com.cart.po.Cart;
import com.user.po.Userinfo;

public interface CartDao {
	public List<Cart> findAll();  
	public void add(int id,int bid);
	public Cart findById(String name);
	public void delete(Cart admin);
	public List<Cart> cartt(Integer userid);  
}
