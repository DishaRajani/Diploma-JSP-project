<%
String str=request.getParameter("sub");
if(str.equals("SEMESTER 1"))
{
	response.sendRedirect("Sem1.html");
}
else if(str.equals("SEMESTER 2"))
{
	response.sendRedirect("Sem2.html");
}
else if(str.equals("SEMESTER 3"))
{
	response.sendRedirect("Sem3.html");
}
else if(str.equals("SEMESTER 4"))
{
	response.sendRedirect("Sem4.html");
}
else if(str.equals("SEMESTER 5"))
{
	response.sendRedirect("Sem5.html");
}
else if(str.equals("SEMESTER 6"))
{
	response.sendRedirect("Sem6.html");
}

 %>