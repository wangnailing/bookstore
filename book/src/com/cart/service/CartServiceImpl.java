package com.cart.service;

import java.util.List;

import com.book.po.Bookinfo;
import com.book.dao.BookDao;
import com.book.po.Book;
import com.cart.dao.CartDao;
import com.cart.po.Cart;

public class CartServiceImpl implements CartService{
	private CartDao cartDao;
public CartDao getCartDao() {
		return cartDao;
	}
	public void setCartDao(CartDao cartDao) {
		this.cartDao = cartDao;
	}
@Override
	public List<Cart> findAll_() {
		// TODO Auto-generated method stub
		List<Cart> ls = cartDao.findAll();
		return ls;
	}
	@Override
	public boolean add_(int id,int bid) {
		// TODO Auto-generated method stub
		boolean flag=true;
		try
		{ System.out.print(id+"----------------------"+bid);
			cartDao.add(id,bid); 
		}
		catch(Exception ex)
		{
			 flag=false;
			 System.out.println("ÃÌº”“Ï≥£"+ex.getMessage());
		}
		return flag;
	}

	@Override
	public Cart findById_(String name) {
		// TODO Auto-generated method stub
		
		return cartDao.findById(name);
	}

	@Override
	public boolean delete_(Cart admin) {
		// TODO Auto-generated method stub
		boolean flag=true;
		try
		{	
			cartDao.delete(admin);
		}
		catch(Exception ex)
		{
			 flag=false;
			 System.out.println("…æ≥˝“Ï≥£"+ex.getMessage());
		}
		return flag;
		
	}
	@Override
	public List<Cart> cartt_(Integer userid) {
		// TODO Auto-generated method stub
		List<Cart> ls = cartDao.cartt(userid);
		return ls;
	}

}
