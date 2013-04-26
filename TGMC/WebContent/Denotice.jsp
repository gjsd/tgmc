<%@ page language="java" import="java.sql.*,java.util.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<%!ResultSet rs,rs1;
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
stmt=con.createStatement();
	 }
		
	 catch(Exception e){e.printStackTrace();}}%>

	<%     
	try{
		HashMap userid=(HashMap)ctx.getAttribute("user");
	ses=request.getSession();
	System.out.println("in gen3");
	System.out.println(request.getParameter("q")); 
	ses.setAttribute("orgm",request.getParameter("q"));
	//rs=stmt.executeQuery("select * from accord where userid1='"+ses.getAttribute("userid")+"' and userid2='"+ses.getAttribute("org")+"' and product='"+ses.getAttribute("proname")+"' and procode='"+ses.getAttribute("procode")+"'");
	rs1=stmt.executeQuery("select * from notice where org='"+request.getParameter("q")+"' and userid2='"+ses.getAttribute("userid")+"'");
	response.getWriter().write("<font style='font-family: Comic Sans MS'>Date Of Notice :</font><select name='sel1' onchange='vary(this.value)'>");
	while(rs1.next()){
	response.getWriter().write("<option>Select</option>");
	response.getWriter().write("<option>"+rs1.getString("dt")+"</option>");	
}
	response.getWriter().write("</select>");
	} 
	catch(Exception e){
	e.printStackTrace();
	}
	

  
      
%>
<body> 
</body>
</html>