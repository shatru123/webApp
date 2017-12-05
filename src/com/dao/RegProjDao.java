package com.dao;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import com.bean.RegProjBean;

public class RegProjDao 
{
	public static int ins=0;
	public static boolean emValidation(RegProjBean b) 
	{
		boolean status=false;
		
		
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://sql12.freemysqlhosting.net:3306/sql12206164", "sql12206164", "dEzZ3p7WCM");
			PreparedStatement ps=con.prepareStatement("insert into Regprog values(?,?,?,?,?,?,?,?)");
			ps.setString(1, b.getFn());
			ps.setString(2, b.getLn());
			ps.setString(3, b.getGender());
			ps.setString(4, b.getEmail());
			ps.setString(5, b.getClg());
			ps.setString(6, b.getBranch());
			ps.setString(7, b.getCity());
			ps.setString(8, b.getMob());
			
			
			 ins=ps.executeUpdate();
			System.out.println(ins);
			if(ins == 1)
			{
				
				
				status=true;
				
			}
			
			
			
		
		
			
		
	}catch (Exception e) {
		// TODO: handle exception
		System.out.println("catch tru");
		System.out.println(e.getMessage());
	}
		return status;
	}
}
