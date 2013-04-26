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
stmt=con.createStatement(
        ResultSet.TYPE_SCROLL_INSENSITIVE,
        ResultSet.CONCUR_UPDATABLE);
	 }		
	 catch(Exception e){e.printStackTrace();}}
	 %> 
	<% HashMap userid=(HashMap)ctx.getAttribute("user");
	st=con.createStatement();
	ses=request.getSession();
	System.out.println(request.getParameter("m")+"i ord details"); 
	
	rs=stmt.executeQuery("select * from orders where userid2='"+request.getParameter("m")+"' and userid1='"+ses.getAttribute("userid")+"' and order='"+request.getParameter("j")+"'");
	
	if(rs.next()){ 
		response.getWriter().write("<table><tr><td>qty:<input type='text' name='qty' value='"+rs.getString("qty")+"' readonly='readonly'></td><td>DeliveryDate:<input type='text' name='del' value='"+rs.getString("delivery")+"' readonly='readonly'></td>mode:<input type='text' name='mode' value='"+rs.getString("mode")+"' readonly='readonly'></tr></table>");
      	        
	}%>
	        	 
<body>  
</body>
</html>