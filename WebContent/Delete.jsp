<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String em=request.getParameter("email");
try
 {
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost/Mahaithub", "root", "root");
	/* PreparedStatement ps1=con.prepareStatement("select * from RegProj");
	ResultSet rs=ps1.executeQuery();
 	for(int i=0;i<1;i++)
	{
	 em=rs.getString(4);
	}  */
	
	PreparedStatement ps=con.prepareStatement("delete from RegProj where Email=?");
	ps.setString(1,em);
	
	int res=ps.executeUpdate();
	
	if(res>0)
	{
		out.println("record deleted!!!");
%>
 <jsp:include page="Dashboard1.jsp"> 
<jsp:param value="<%= em %>" name="email"/>
 </jsp:include> 
<%
	}
	else{
		out.println("try again!!!");
		%>
		delete n
		 <jsp:include page="Dashboard1.jsp">
		<jsp:param value="<%= em %>" name="email"/>
		</jsp:include> 
		<%
	}
	
 }
catch(Exception e)
{
 System.out.print(e);	
}

%>
</body>
</html>