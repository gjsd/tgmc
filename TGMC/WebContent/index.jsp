<html>
<head>
<style type="text/css">
#qw
{
background-color="#FF6666";
}
#iq
{
background-color="#CC99FF"; 
}

</style>
<body>
  <form id="fr1" action="http://localhost:8080/TGMC/start" method="post">
<%!  String str; 
HttpSession ses;
int i=0; %>
<% i++;%>
<%
 try{ ses=request.getSession();
if(ses.isNew())
{
ses.setAttribute("str","Enter Username and Password");	
}
str=ses.getAttribute("str").toString();
}
catch(Exception e){
	e.printStackTrace();
}%>
<div id="qw"><br><br>
<br><br><font color="#CCD02F" face="Cooper Black" size="50"><center>SUPPLY CHAIN MANAGEMENT</center><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</div>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<fieldset>
<legend><font face="Cooper Black"> Login</font></legend>
<table align="left"><tr><td><br><br></td></tr>
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="scma-logo1.JPG"  height="125"width="250">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
<td bgcolor="#CCD02F"><br><br></td>
</tr></table>
<table align="right" ><tr><td><br><br></td></tr>
<tr><td bgcolor="#CCD02F" width=".1"></td><td><font face="Comic Sans MS">&nbsp;&nbsp;&nbsp;&nbsp;Welcome to the Exciting world of Supply Chain Network.<p>&nbsp;&nbsp;&nbsp;
This is an integrated Network of Manufacturers,Distributors &</p><p>&nbsp;&nbsp;&nbsp;&nbsp;Retailers.So, what are you waiting for, join the chain for free and <p>&nbsp;&nbsp;&nbsp;&nbsp;see your Business prosper in a short span of time.Best Of Luck!!!</td>
</tr></table>
				<table align="center">			 
<!--				<td colspan="3">-->
    						<td colspan="2"><center><font face="Comic Sans MS" size="3" color="#ic355d"><%=str%></font></center><br></td> 
					
					<tr>
						<td bgcolor="#0089CF" colspan="2" align="center"><font face="Arial" size="-1" color="#ffffff"><b>Registered Users</b></font></td> 
					</tr> 
					<tr> 
						<td bgcolor="#E6EEF1" width="100"><font face="Arial" size="-1" color="#0c355d">Username</font></td> 
						<td bgcolor="#E6EEF1"><input type="Text" name="user" size="25" maxlength="50"></td> 
					</tr> 
					<tr> 
						<td bgcolor="#E6EEF1" width="100"><font face="Arial" size="-1" color="#0c355d">Password</font></td> 
						<td bgcolor="#E6EEF1"><input type="password" name="pwd" size="25" maxlength="20"></td> 
					</tr> 
					
					<tr> 
						<td bgcolor="#E6EEF1" colspan="2" align="center"><input type="Submit" name="Submit" value="Login">&nbsp;&nbsp;<input type="Reset"></td> 
					</tr> 
					<tr> 
						<td bgcolor="#E6EEF1"><a href="hint.jsp"><font face="Arial" size="-1" color="#0c355d"><u>Forgot password?</u></font></a></td> 
						<td bgcolor="#E6EEF1" align="right"><a href="Reg.jsp"><u>New users</u></a> register here</td> 
					</tr> 
					</table> <tr><td><br></td></tr>

				</fieldset>
				
					</body>
						<div id="iq"><br><br><br><br></div>
					</html>