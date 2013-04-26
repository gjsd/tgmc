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
	System.out.println(request.getParameter("l")+"deal"); 
	
	rs=stmt.executeQuery("select * from orders where userid2='"+request.getParameter("l")+"' and userid1='"+ses.getAttribute("userid")+"' and procode='"+request.getParameter("k")+"'");
	response.getWriter().write("<font style='font-family: Comic Sans MS'>OrderedDate :</font><select name='sel4' onchange='orddetails(this.value)'>");	         
	response.getWriter().write("<option>select</option>"); 
	while(rs.next()){ 
		//st.executeQuery("select * from dtls where userid='"+rs.getString("userid1")+"'").getString("org");
	      response.getWriter().write("<option>"+rs.getString("order")+"</option>");
      	          }
response.getWriter().write("</select>");	       
	%>
	        	 
<body>  
</body>
</html>