<%
String str=request.getParameter("sub");
if(str.equals("FYDETAILS"))
{
	response.sendRedirect("fydet.html");
}
else if(str.equals("SYDETAILS"))
{
	response.sendRedirect("sydet.html");
}
else if(str.equals("TYDETAILS"))
{
	response.sendRedirect("tydet.html");
}

 %>