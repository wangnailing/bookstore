package com.user.dao;


import java.sql.*;
import java.util.List;


import com.db.DbConn;
import com.user.po.Userinfo;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public class UserDaoImpl extends HibernateDaoSupport  implements UserDao{

	
	
	@Override
	public boolean login(String username,String userpwd) {
		
		List<Userinfo> ls=(List<Userinfo>)getHibernateTemplate().find("from Userinfo u where u.username=? and u.pwd=?",new String[]{username,userpwd});
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
	public void delete(Userinfo persistentInstance) {
		// TODO Auto-generated method stub
		getHibernateTemplate().delete(persistentInstance);
	}

	@Override
	public List<Userinfo> findAll() {
		// TODO Auto-generated method stub
		String queryString = "from Userinfo";
		return getHibernateTemplate().find(queryString);
	}

	@Override
	public Userinfo findById(int id) {
		// TODO Auto-generated method stub
		Userinfo instance = (Userinfo) getHibernateTemplate().get(
				"com.user.po.Userinfo", id);
		return instance;
	}

	@Override
	public List<Userinfo> find_query_all(String riName) {
		String queryString = "from User a where a.username like '%"
			+ riName + "%' order by a.id desc";
	return this.getHibernateTemplate().find(queryString);
	}

	@Override
	public void save(Userinfo transientInstance) {
		// TODO Auto-generated method stub
		getHibernateTemplate().save(transientInstance);
	}

	@Override
	public void attachDirty(Userinfo instance) {
		// TODO Auto-generated method stub
		getHibernateTemplate().saveOrUpdate(instance);
	}


	@Override
	public int findByIdd(String name,String pwd) {
		// TODO Auto-generated method stub

		String queryString = "select a.id from Userinfo a where a.username = '"+ name + "' and a.pwd = '"+pwd+"'";
List id=getHibernateTemplate().find(queryString);
Integer idd=(Integer) id.get(0);

		System.out.print(idd+"==============================");
	return idd;

	}

}
