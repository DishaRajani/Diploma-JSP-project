<%
String str=request.getParameter("sub");
if(str.equals("Add Student details"))
{
	response.sendRedirect("stud.html");
}
else if(str.equals("Search Student details"))
{
	response.sendRedirect("StudSearch.html");
}
else if(str.equals("Add Lecturer Detail"))
{
	response.sendRedirect("lect.html");
}
else if(str.equals("Update Lecturer Info"))
{
	response.sendRedirect("UpdateLect.html");
}
else if(str.equals("Student Attendance Information"))
{
	response.sendRedirect("atten.html");
}
else if(str.equals("Exam Result Information"))
{
	response.sendRedirect("Exm.html");
}
else if(str.equals("Exam Information"))
{
	response.sendRedirect("tt.html");
}
else if(str.equals("Exam Result search"))
{
	response.sendRedirect("Semester6.html");
}
 %>
