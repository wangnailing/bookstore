package com.user.dao;

import java.util.List;



import com.user.po.Userinfo;

public interface UserDao {
	    
	    public boolean  login(String username,String userpwd); 
	    public void save(Userinfo transientInstance);
		public void delete(Userinfo persistentInstance);
		public Userinfo findById(int id);

		public int findByIdd(String name,String pwd);
		
		public List<Userinfo> findAll();
		public List<Userinfo> find_query_all(String ri_name);
		public void attachDirty(Userinfo instance);
}
