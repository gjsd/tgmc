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
ctx=getServletContext();
con=(Connection)ctx.getAttribute("Connection");
stmt=con.createStatement();
	 }
		
	 catch(Exception e){e.printStackTrace();}}%> 
	<% 
	ses=request.getSession();
	System.out.println(request.getParameter("q")); 
	rs=stmt.executeQuery("select distinct product from feedback where userid='"+ctx.getAttribute("userid")+"' and cat='"+request.getParameter("q")+"'");
	response.getWriter().write("<font style='font-family: Comic Sans MS'>Product:</font><select name='sel1' onchange='vary(this.value)'>");	         
	response.getWriter().write("<option>select</option>"); 
	while(rs.next()){ 
	      response.getWriter().write("<option>"+rs.getString("product")+"</option>");
      	          }
response.getWriter().write("</select>");       
%>
<body> 

</body>
</html>