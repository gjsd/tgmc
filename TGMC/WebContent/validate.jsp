<%@ page language="java" import="java.sql.*,java.util.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<%!ResultSet rs;
Statement st;
Connection con;
HttpSession ses;
Statement stmt;
Set s;
ServletContext ctx;
public void jspInit(){
	 try{
Class.forName("com.ibm.db2.jcc.DB2Driver");
ctx=getServletContext();
con = (Connection)ctx.getAttribute("Connection");

stmt=con.createStatement();
	 }		
	 catch(Exception e){e.printStackTrace();}}
	 %> 
	<% 
	ses=request.getSession();
	System.out.println(request.getParameter("r")); 
	rs=stmt.executeQuery("select * from users where userid='"+ses.getAttribute("userid")+"' and procode='"+request.getParameter("r")+"'");

		         if(rs.next()){ 
		        	 System.out.println(rs.getString("qty"));
	        	 response.getWriter().write("Availability:<input type='text' name='avail' value="+ rs.getString("qty")+">");
	        	 response.getWriter().write("Price:<input type='text' name='price' value="+ rs.getString("price")+"><br>");
	        	return; } %>
	        	
<body>
   
</body>
</html>