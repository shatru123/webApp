package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;


public class ConnectionProvider 
{
	static Connection con=null;
	static
	{
		try
		{
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://sql12.freemysqlhosting.net:3306/sql12206164", "sql12206164", "dEzZ3p7WCM");
			con.setAutoCommit(false);
		
			
		}
		catch(Exception e)
		{
			
			e.printStackTrace();
		}
	}
	public static Connection getCon()
	{
		return con;
	}
}
