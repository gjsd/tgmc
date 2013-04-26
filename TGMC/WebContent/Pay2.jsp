<%@ page language="java" import="java.sql.*,java.util.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<%!ResultSet rs;
ResultSet rs1;
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
stmt=con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,
        ResultSet.CONCUR_UPDATABLE);
	 }
		
	 catch(Exception e){e.printStackTrace();
	 }
	 }
	 %> 
	<% 
	ses=request.getSession();
	System.out.println(request.getParameter("p")); 
	ctx.setAttribute("code",request.getParameter("p"));
	rs=stmt.executeQuery("select * from GenBill where org1='"+ses.getAttribute("userid")+"' and org2='"+ses.getAttribute("org")+"' and procode='"+request.getParameter("p")+"'");
	if(rs.next()){ 
	response.getWriter().write("<br><br><center><font style='font-family: Comic Sans MS'>Quantity:</font><input type='text' name='ip1' readonly='readonly' value="+rs.getString("qty")+">");	         
	response.getWriter().write("<font style='font-family: Comic Sans MS'>Price Per Unit:</font><input type='text' name='ip2'readonly='readonly' value="+rs.getString("ppu")+">");	         
	response.getWriter().write("<font style='font-family: Comic Sans MS'>Total Amount:</font><input type='text' name='ip3'readonly='readonly' value="+rs.getString("amt")+"></center>");   
    response.getWriter().write("<font style='font-family: Comic Sans MS'>Credit Card:</font><select name='selcard'>");
	response.getWriter().write("<option value='select'> Select Credit Card--</option> 	<option value='AM'>American Express</option><option value='MC'>Master Card</option><option value='DC'>Discover</option><option value='VC'>Visa</option>");
    response.getWriter().write("</select>");
	response.getWriter().write("<br><br><center><font style='font-family: Comic Sans MS'>Credit Card Number:</font><input type='text' name='ip4'>");	         
	response.getWriter().write("<br><br><center><font style='font-family: Comic Sans MS'>CVV Number:</font><input type='text' name='ip5'>");	         
}
	st=con.createStatement();
	rs1=st.executeQuery("select * from dtls where org='"+ses.getAttribute("org")+"'");
	if(rs1.next()){
    response.getWriter().write("<font style='font-family: Comic Sans MS'>Address of Receipient:</font><textarea>"+rs1.getString("add")+"</textarea>");
	} 
%>
<body> 

</body>
</html>