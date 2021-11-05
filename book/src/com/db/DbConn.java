package com.db;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;


public class DbConn {

	static Connection	conn =null;
	public static Connection getConnection()
	{
		try {
			Class.forName("com.mysql.jdbc.Driver"); // 加载驱动程序

		} catch (ClassNotFoundException e)  {
			System.out.println("加载驱动程序错误" + e.getMessage());
		}

		
		try 
		{
			// 创建连接 testdb是数据库名称
			 String url = "jdbc:mysql://localhost/bookstore";
			String name = "root";
			String password = "0000";
			
			conn = DriverManager.getConnection(url, name, password);
			
		}
		catch(Exception ex)
		{
			System.out.println("得到连接错误--->"+ex.getMessage());
		}
		
		return conn;
		
	}
	
	
}
