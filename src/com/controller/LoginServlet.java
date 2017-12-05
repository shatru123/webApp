package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bean.LoginBean;
import com.dao.LoginDao;


@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String n=request.getParameter("uname");
		String p=request.getParameter("psw");
		LoginBean bean=new LoginBean();
		bean.setUn(n);
		bean.setPass(p);
		boolean s=LoginDao.emValidation(bean);
		if(s)
		{
			HttpSession session=request.getSession();
			session.setAttribute("UserName", n);
			RequestDispatcher rd=request.getRequestDispatcher("Dashboard1.jsp");
			rd.forward(request, response);
		}
		else {
			//out.println("Invalid Something Try Again!!!");
			RequestDispatcher rd=request.getRequestDispatcher("Login1.jsp");
			out.println("Invalid Something Try Again!!!");
			rd.include(request, response);
		}
		
	}

}
