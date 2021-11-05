package com.book.dao;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.book.po.Bookinfo;
import com.book.po.Order;
import com.book.po.Remark;
import com.book.dao.BookDao;
import com.book.po.Book;
import com.db.DbConn;
import com.user.po.Userinfo;

public class BookDaoImpl extends HibernateDaoSupport  implements BookDao{
	@Override
	public List<Bookinfo> findAlll(int name) {
		// TODO Auto-generated method stub 
		String queryString = "from Bookinfo a where a.id = '"+name+"'"; 
		System.out.print(this.getHibernateTemplate().find(queryString));
		return  getHibernateTemplate().find(queryString);
	}
	
	@Override
	public boolean login(String username,String userpwd) {
		
		List<Book> ls=(List<Book>)getHibernateTemplate().find("from Book b where b.name=? and b.pwd=?",new String[]{username,userpwd});
		 if(ls!=null)
		 {	 if(ls.size()>0)
			 {
		    return true;
		    }
		 else{
			return false;
		 }
	}else{
		return false;
	}
	}

	@Override
	public List<Userinfo> finduser() {
		// TODO Auto-generated method stub
		String queryString = "from Userinfo";
		System.out.print(queryString);
		return getHibernateTemplate().find(queryString);
		
	}
	@Override
	public void attachDirty(Bookinfo admin) {
		// TODO Auto-generated method stub
		getHibernateTemplate().saveOrUpdate(admin);
	}


	 @Override
	public List<Bookinfo> findAll() {
		// TODO Auto-generated method stub
		String queryString = "from Bookinfo";
		return getHibernateTemplate().find(queryString);
	}

		@Override
		public Bookinfo findById(int id) {
	 
			// TODO Auto-generated method stub
			Bookinfo instance = (Bookinfo) getHibernateTemplate().get(
					"com.book.po.Bookinfo", id);
			return instance;
		}
	@Override
	public void add(Bookinfo admin) {
		// TODO Auto-generated method stub
		getHibernateTemplate().save(admin);
	}
	

	@Override
	public void delete(Bookinfo admin) {
		// TODO Auto-generated method stub
		getHibernateTemplate().delete(admin);
	}

	@Override
	public List<Bookinfo> find_query_all(String riName) {
		// TODO Auto-generated method stub

		String queryString = "from Bookinfo a where a.bookname like '%"
			+ riName + "%' order by a.id desc";
	return this.getHibernateTemplate().find(queryString);
	}

	@Override
	public List<Remark> findpinglun(int ibookid) {
	
		// TODO Auto-generated method stub
		String queryString = "from Remark a where a.bookinfo =" + ibookid + "";
	return this.getHibernateTemplate().find(queryString);
	}

	@Override
	public void padd(int o,int ibookid,String xing,String pinglun) {
		// TODO Auto-generated method stub
		Connection	conn =null;
		Statement stmt=null;
		boolean  flag=false;
		try 
		{
			conn = DbConn.getConnection();
			stmt=conn.createStatement(); 
			
				String usersql="insert into Remark(userid,bookid,grade,remark) values('"+o+"','"+ibookid+"','"+xing+"','"+pinglun+"')";
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
	public void pdelete(Remark bo) {
		// TODO Auto-generated method stub

		getHibernateTemplate().delete(bo);
	}

	@Override
	public Remark findByid(int riId) {
		// TODO Auto-generated method stub
		Remark instance = (Remark) getHibernateTemplate().get(
				"com.book.po.Remark", riId);
		System.out.print(instance);
		return instance;
	}

	@Override
	public void payadd(Integer o1, int ibookid, String poss, String address,
			String num) {
		// TODO Auto-generated method stub
		Connection	conn =null;
		Statement stmt=null;
		boolean  flag=false;
		try  
		{
			conn = DbConn.getConnection();
			stmt=conn.createStatement(); 
			
				String usersql="insert into orderr(userid,bookid,number,address,postcode) values('"+o1+"','"+ibookid+"','"+num+"','"+address+"','"+poss+"')";
				System.out.println(usersql);
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
	public List<Order> payc(Integer o1) {
		// TODO Auto-generated method stub
		String queryString = "from Order a where a.userinfo =" + o1 + "";
		return this.getHibernateTemplate().find(queryString);
	}

	@Override
	public Order findbyid(int pingidd) {
		// TODO Auto-generated method stub
		Order instance = (Order) getHibernateTemplate().get(
				"com.book.po.Order", pingidd);
		System.out.print(instance);
		return instance;
	}

	@Override
	public void paydel(Order bo) {
		// TODO Auto-generated method stub

		getHibernateTemplate().delete(bo);
	}
 

 
}
