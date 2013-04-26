<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<%HttpSession ses;
ses=request.getSession();
String s=ses.getAttribute("col3").toString();
response.sendRedirect("http://localhost:9090/Login?room=Main+Room+2&type=preOpened&u="+s);
%>
<body>

</body>
</html>