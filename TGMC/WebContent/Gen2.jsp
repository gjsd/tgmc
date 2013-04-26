<%@ page language="java" import="java.sql.*,java.util.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<%!ResultSet rs,rs1;
int price,qty;
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
	st=con.createStatement();
	ses=request.getSession();
	System.out.println(request.getParameter("p")); 
	ses.setAttribute("procode",request.getParameter("p"));
	rs=st.executeQuery("select * from accord where userid1='"+ses.getAttribute("userid")+"' and userid2='"+ses.getAttribute("org")+"' and procode='"+request.getParameter("p")+"'");
	rs1=stmt.executeQuery("select * from users where userid='"+ses.getAttribute("userid")+"' and product='"+ses.getAttribute("proname")+"' and procode='"+request.getParameter("p")+"'");
	if(rs1.next()) 
	{	
	price=Integer.parseInt(rs1.getString("price"));
	}
	if(rs.next()){  
	qty=Integer.parseInt(rs.getString("qty"));
	response.getWriter().write("<br><br><center><font style='font-family: Comic Sans MS'>Quantity:</font><input type='text' name='ip1' readonly='readonly' value="+rs.getString("qty")+">");	         
	response.getWriter().write("<font style='font-family: Comic Sans MS'>Price Per Unit:</font><input type='text' name='ip2'readonly='readonly' value="+price+">");	         
	response.getWriter().write("<font style='font-family: Comic Sans MS'>Total Amount:</font><input type='text' name='ip3'readonly='readonly' value="+qty*price+"></center>");
	int oldamt=qty*price;
	ses.setAttribute("oldamt",oldamt);
	System.out.println(ses.getAttribute("oldamt"));
	response.getWriter().write("<br><center><font style='font-family: Comic Sans MS'>Discount in percentage:</font><input type='text' name='ip4' onchange='varydis(this.value)'></center>");	    
	}
	   
      
%>
<body> 

</body>
</html>