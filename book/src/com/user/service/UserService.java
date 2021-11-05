package com.user.service;

import java.util.List;


import com.user.po.Userinfo;

public interface UserService {
	    public  boolean userLogin(String username,String userpwd); 
		public List<Userinfo> findAll_();
		public Userinfo findById_(int ri_id);

		public int findById__(String name,String pwd);
		public boolean add_(Userinfo userInfo);
		public boolean update_(Userinfo userInfo);
		public boolean deleteAll_(int[] id);
		public boolean delete_(Userinfo userInfo);
		public List<Userinfo> find_query_all_(String ri_name);
     
}
