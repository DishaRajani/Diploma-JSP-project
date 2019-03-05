<%
String str=request.getParameter("sub");
if(str.equals("ADMIN"))
{
	response.sendRedirect("adminlogin.html");
}
else if(str.equals("USER"))
{
	response.sendRedirect("loginuser.html");
}
 %>