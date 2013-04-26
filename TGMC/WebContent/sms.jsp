<%@ page language="java" import="java.sql.*,java.util.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head><%!
ResultSet rs,rs1;
Statement st,st1;
Connection con;
Set s;
public void jspInit(){
	ServletContext ctx=getServletContext();
	//System.out.println("Driver laoded11");
	con=(Connection)ctx.getAttribute("Connection");
	//System.out.println("Connection laoded11");
	try{
	st=con.createStatement();
	} 
	catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} 
s=new HashSet();
}
%><%
rs=st.executeQuery("select * from dtls where category='dis' or category='ret'");

while(rs.next())
{
	String s1=rs.getString("org");
     s.add(rs.getString("org"));
	}
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<BODY>

<table cellpadding="5" cellspacing="0" border="0" width="100%"><tr><td align="left" valign="top" class="just">
<tr><td>
<form action="#" name="form">
<br>
    <br>
    <br>
    <br>
    <table><tr><td>
    Please select the Related Organisation to whom you want to send a SMS to:</td></tr></table>
	<table><tr><td>
	Category :<select id="cat" name="cat"><option>select</option>
	<c:forEach var="category" items="<%= s %>"><option><c:out value="${category}"/></option></c:forEach>
	</select></td>
	Message:<br><br>
	<textarea name="message"></textarea>
	
	<input type="Submit" name="send" id="send1">
	
	<%String s1;
	s1=rs.getString("org");
	if(request.getParameter("send1")!=null && request.getParameter("cat")!=null)
	{
		ResultSet rs1=st1.executeQuery("select * from dtls where org='"+request.getParameter("cat")+"'");
if(rs1.next()){
		response.sendRedirect("http://127.0.0.1:8080/?PhoneNumber="+rs.getString("tel")+"Text="+request.getParameter("message"));
	}}%>
	</tr></table></form></td></tr></table></BODY></html>
	
