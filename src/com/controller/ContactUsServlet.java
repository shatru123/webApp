package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.ContactUsBean;
import com.bean.RegProjBean;
import com.dao.ContactUsDao;
import com.dao.RegProjDao;


@WebServlet("/ContactUsServlet")
public class ContactUsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ContactUsServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String fullname=request.getParameter("fullname");
		String em=request.getParameter("email");
		String phone=request.getParameter("phone");
		String sub=request.getParameter("sub");
		String msg=request.getParameter("msg");
		
		
		ContactUsBean cbean=new ContactUsBean();
		
		cbean.setFullname(fullname);;
		cbean.setEmail(em);
		cbean.setPhone(phone);
		cbean.setSub(sub);
		cbean.setMsg(msg);
		
		
		boolean s=ContactUsDao.ctValidation(cbean);
		
		if(s)
		{
			RequestDispatcher rd=request.getRequestDispatcher("ContactUs.jsp");
			rd.forward(request, response);
			
		}
		
		
	}

}
