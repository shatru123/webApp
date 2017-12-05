package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.bean.LoginBean;

public class LoginDao
{

	public static boolean emValidation(LoginBean b) 
	{
		boolean status=false;
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://sql12.freemysqlhosting.net:3306/sql12206164", "sql12206164", "dEzZ3p7WCM");
			PreparedStatement ps=con.prepareStatement("select * from Logintab where Uname=? and password=?");
			ps.setString(1, b.getUn());
			ps.setString(2, b.getPass());
			ResultSet rs=ps.executeQuery();
			status=rs.next();
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
		
	}
}
