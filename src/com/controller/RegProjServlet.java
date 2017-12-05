package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.RegProjBean;
import com.dao.RegProjDao;
import com.dao.SendMail;


/**
 * Servlet implementation class RegProjServlet
 */
@WebServlet("/RegProjServlet")
public class RegProjServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegProjServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//System.out.println("in dopostofrs");
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String fn=request.getParameter("fn");
		String ln=request.getParameter("ln");
		String gen=request.getParameter("gender");
		String em=request.getParameter("email");
		String clg=request.getParameter("clg");
		String br=request.getParameter("branch");
		String ct=request.getParameter("city");
		String mo=request.getParameter("mob");
		
		RegProjBean bean=new RegProjBean();
		
		bean.setFn(fn);
		bean.setLn(ln);
		bean.setGender(gen);
		bean.setEmail(em);
		bean.setClg(clg);
		bean.setBranch(br);
		bean.setCity(ct);
		bean.setMob(mo);
		final String sub="Project Conformation";
		final String bd="Thanks For registration ! We will Get Back TO You!";
		boolean s=RegProjDao.emValidation(bean);
		
		if(s)
		{
			SendMail sm=new SendMail();
				sm.sendmail(em);
				
			//out.println("Thank You For Registration. Conformation mail has been sent to: "+em);
			RequestDispatcher rd=request.getRequestDispatcher("RegProj.jsp");
			rd.forward(request, response);
			
		}
		
	}

}
