package com.cart.dao;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.book.po.Bookinfo;
import com.book.dao.BookDao;
import com.book.po.Book;
import com.cart.po.Cart;
import com.db.DbConn;
import com.user.po.Userinfo;

public class CartDaoImpl extends HibernateDaoSupport  implements CartDao{
	
	@Override
	public List<Cart> findAll() {
		// TODO Auto-generated method stub
		String queryString = "from Bookinfo";
		return getHibernateTemplate().find(queryString);
	}

	@Override
	public void add(int id,int bid) {
		// TODO Auto-generated method stub

		Connection	conn =null;
		Statement stmt=null;
		boolean  flag=false;
		try 
		{
			conn = DbConn.getConnection();
			stmt=conn.createStatement(); 
			
				String usersql="insert into cart(userid,bookid)values('"+bid+"','"+id+"')";
				//System.out.println(usersql);
				int n=stmt.executeUpdate(usersql);
				 if(n>0)
				 {
						flag=true;
				 }
				 else
				 {
						flag=false;
				 }
			conn.close();
		}
		catch(Exception ex)
		{
			try {
				if(conn!=null)
				   conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			System.out.println("error--->"+ex.getMessage());
		}
	}

	
	
	@Override
	public Cart findById(String name) {
 
		// TODO Auto-generated method stub
		Cart instance = (Cart) getHibernateTemplate().get(
				"com.cart.po.Cart",name);
		return instance;
		
	}
	

	@Override
	public void delete(Cart admin) {
		// TODO Auto-generated method stub
		getHibernateTemplate().delete(admin);
	}

	@Override
	public List<Cart> cartt(Integer userid) {
		// TODO Auto-generated method stub
		Cart c=new Cart();
		String queryString = "select a from Cart a where a.userinfo =" + userid + "";
		System.out.println("----------------------------------------------------" +
				""+queryString);
		
		return this.getHibernateTemplate().find(queryString);
	}
}
