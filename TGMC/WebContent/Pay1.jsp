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
	catch(Exception e){e.printStackTrace();}}%> 
	<% 
	ses=request.getSession();
	System.out.println(request.getParameter("q")); 
	ses.setAttribute("org",request.getParameter("q"));
	rs=stmt.executeQuery("select * from GenBill where org1='"+ses.getAttribute("userid")+"' and org2='"+request.getParameter("q")+"'");
	response.getWriter().write("<font style='font-family: Comic Sans MS'>Product Name:</font><select name='sel1' onchange='varyname(this.value)'>");	         
	response.getWriter().write("<option>select</option>"); 
	while(rs.next()){ 
	      response.getWriter().write("<option>"+rs.getString("product")+"</option>");
      	          }
response.getWriter().write("</select>");   
 
%>
<body> 

</body>
</html>