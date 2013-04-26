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
 con = (Connection)(ctx.getAttribute("Connection"));
stmt=con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,
        ResultSet.CONCUR_UPDATABLE);
	 }
		
	 catch(Exception e){e.printStackTrace();}}%>  
	<% 
	ses=request.getSession();
	System.out.println(request.getParameter("p")); 
	ses.setAttribute("proname",request.getParameter("p"));
	rs=stmt.executeQuery("select * from accord where userid1='"+ses.getAttribute("userid")+"' and userid2='"+ses.getAttribute("org")+"' and product='"+request.getParameter("p")+"'");
	response.getWriter().write("<font style='font-family: Comic Sans MS'>Product Code:</font><select name='sel2'>");	         
	response.getWriter().write("<option>Select</option>"); 
	while(rs.next()){ 
	      response.getWriter().write("<option>"+rs.getString("procode")+"</option>");
      	          }
response.getWriter().write("</select>");   
	
	   
      
%>
<body> 

</body>
</html>