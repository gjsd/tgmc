<%@ page language="java" import="java.sql.*" contentType="text/html; charset=ISO-8859-1"
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
ServletContext ctx;
public void jspInit(){
	 try{
ctx=getServletContext();
con=(Connection)ctx.getAttribute("Connection");
stmt=con.createStatement();
st=con.createStatement();
	 }
		
	 catch(Exception e){e.printStackTrace();}}%>
	  <% ses=request.getSession();

if(request.getParameter("r")!=null&&request.getParameter("p")!=null){
	
	rs=st.executeQuery("select username from dtls where userid='"+ses.getAttribute("userid")+"' and password='"+request.getParameter("r")+"'");
if(!rs.next())
{
	response.getWriter().print("pass word is incorrect");
}
else
{
stmt.execute("update dtls set password='"+request.getParameter("p")+"' where userid='"+ses.getAttribute("userid")+"'");	
response.getWriter().print("Pass word Changed Successfully");
}
}
%>
<body>
</body>
</html>