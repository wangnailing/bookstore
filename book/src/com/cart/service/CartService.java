package com.cart.service;

import java.util.List;

import com.book.po.Bookinfo;
import com.book.po.Book;
import com.cart.po.Cart;
import com.user.po.Userinfo;

public interface CartService {
	public List<Cart> findAll_();
	public boolean add_(int id,int bid);
	public Cart findById_(String name);
	public boolean delete_(Cart bo);
	public List<Cart> cartt_(Integer userid);
	
}
