package com.user.service;

import java.util.List;


import com.user.dao.UserDao;
import com.user.po.Userinfo;

public class UserServiceImpl implements UserService {

	
	private UserDao userDao;
	
	
	public UserDao getUserDao() {
		  return userDao;
	}


	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}


	@Override
	public boolean add_(Userinfo userInfo) {
		// TODO Auto-generated method stub
		boolean flag=true;
		try
		{
		userDao.save(userInfo); //��hibernate
	//	 flag=userDao.add_nohib(userInfo); //����hibernate
		}
		catch(Exception ex)
		{
			 flag=false;
			 System.out.println("����쳣"+ex.getMessage());
		}
		return flag;
	}


	@Override
	public boolean deleteAll_(int[] id) {
		// TODO Auto-generated method stub
		boolean flag=true;
		try
		{
			for (int i = 0; i < id.length; i++) {
				Userinfo userInfo = userDao.findById(id[i]);
				if (null == userInfo) {
					continue;
				}
		
				userDao.delete(userInfo);
			}
		}
		catch(Exception ex)
		{
			 flag=false;
			 System.out.println("����쳣"+ex.getMessage());
		}
		return flag;
	}


	@Override
	public List<Userinfo> findAll_() {
		
		List<Userinfo> ls = userDao.findAll(); //��hibernate
		//List<User> ls = userDao.getUsers_nohib();//����hibernate
		return ls;
	}

	@Override
	public Userinfo findById_(int riId) {
		return userDao.findById(riId);
	}

	@Override
	public int findById__(String name,String pwd) {
		// TODO Auto-generated method stub
		return userDao.findByIdd(name,pwd);
	} 
	@Override
	public List<Userinfo> find_query_all_(String riName) {
		// TODO Auto-generated method stub
		return userDao.find_query_all(riName);
	}


	@Override
	public boolean update_(Userinfo userInfo) {
		// TODO Auto-generated method stub
		boolean flag=true;
		try
		{	
		userDao.attachDirty(userInfo);
		}
		catch(Exception ex)
		{
			 flag=false;
			 System.out.println("����쳣"+ex.getMessage());
		}
		return flag;
		
	}


	@Override
	public boolean userLogin(String username, String userpwd) {
		// TODO Auto-generated method stub
		boolean flag=false;
       flag= userDao.login(username,userpwd); 
		return flag;
	}


	@Override
	public boolean delete_(Userinfo userInfo) {
		// TODO Auto-generated method stub
		
		boolean flag=true;
		try
		{	
		userDao.delete(userInfo);
		}
		catch(Exception ex)
		{
			 flag=false;
			 System.out.println("ɾ���쳣"+ex.getMessage());
		}
		return flag;
		
	}




	
}
