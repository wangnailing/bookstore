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
			Class.forName("com.mysql.jdbc.Driver"); // ������������

		} catch (ClassNotFoundException e)  {
			System.out.println("���������������" + e.getMessage());
		}

		
		try 
		{
			// �������� testdb�����ݿ�����
			 String url = "jdbc:mysql://localhost/bookstore";
			String name = "root";
			String password = "0000";
			
			conn = DriverManager.getConnection(url, name, password);
			
		}
		catch(Exception ex)
		{
			System.out.println("�õ����Ӵ���--->"+ex.getMessage());
		}
		
		return conn;
		
	}
	
	
}
