<%@page import="java.sql.*"%>
<%!
String username1,pass1,username2,pass2;
%>
<%
String username1=request.getParameter("username");

String pass1=request.getParameter("pass");
String username2,pass2;
String sql="Select * from login";
try
{
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:stud");
	PreparedStatement pst=con.prepareStatement(sql);
	ResultSet rs=pst.executeQuery();
	while(rs.next())
	{
		username2=rs.getString(1);
		pass2=rs.getString(2);
		if(username1.equals(username2)&&pass1.equals(pass2))
		{
			session.setAttribute("username",username1);
			RequestDispatcher rd=request.getRequestDispatcher("newUserHome.html");
			rd.forward(request,response);
			
		}	
		else
		{
			
			RequestDispatcher rd = request.getRequestDispatcher("newloginuser.html");
                			rd.forward(request, response);
			out.println("<b>You have entered incorrect password</b>");
            
		}	
		
	}
	con.close();
}
catch(Exception e)
{
	out.println(e);
}
%>