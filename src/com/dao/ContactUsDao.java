package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import com.bean.ContactUsBean;



public class ContactUsDao
{

	public static int ins=0;
	public static boolean ctValidation(ContactUsBean b) 
	{
		boolean status=false;
		
		
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://sql12.freemysqlhosting.net:3306/sql12206164", "sql12206164", "dEzZ3p7WCM");
			PreparedStatement ps1=con.prepareStatement("insert into Contactus values(?,?,?,?,?)");
			ps1.setString(1, b.getFullname());
			ps1.setString(2, b.getEmail());
			ps1.setString(3, b.getPhone());
			ps1.setString(4, b.getSub());
			ps1.setString(5, b.getMsg());
			
			
			 ins=ps1.executeUpdate();
			
			if(ins == 1)
			{
				
				status=true;
				
			}
			
			
			
		
		
			
		
	}catch (Exception e) {
		// TODO: handle exception
		System.out.println("catch tru");
		//System.out.println(e.getMessage());
	}
		return status;
	}
}
