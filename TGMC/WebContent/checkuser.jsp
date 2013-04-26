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
ServletContext ctx;
public void jspInit(){
	 try{
ctx=getServletContext();
con=(Connection)ctx.getAttribute("Connection");
st=con.createStatement();
	 }
		
	 catch(Exception e){e.printStackTrace();}}%> 
	<% 
	
	System.out.println(request.getParameter("r")); 
	rs=st.executeQuery("select * from dtls where username='"+request.getParameter("r")+"'");
	if(rs.next()){
		
		System.out.print(true);
		response.getWriter().print("not valid");
		System.out.print(true);
	}
	else
	{
		response.getWriter().print("valid");
		
	}
%>
<body>

</body>
</html>