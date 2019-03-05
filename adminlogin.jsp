<%@page import="java.sql.*"%>
<%!
String username,pass,username1,pass1;
%>
<%
String username=request.getParameter("username");

String pass=request.getParameter("pass");
String username1,pass1;
String sql="Select * from Admin";
try
{
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:stud");
	PreparedStatement pst=con.prepareStatement(sql);
	ResultSet rs=pst.executeQuery();
	while(rs.next())
	{
		username1=rs.getString(1);
		pass1=rs.getString(2);
		if(username.equals(username1)&&pass.equals(pass1))
		{
			session.setAttribute("username",username);
			RequestDispatcher rd=request.getRequestDispatcher("mainHome.html");
			rd.forward(request,response);
			
		}	
		else
		{
			
			RequestDispatcher rd = request.getRequestDispatcher("newadminlogin.html");
					out.println("<font style='Arial'><b>You have entered incorrect password</b></font>");
            
                			rd.forward(request, response);
			
		}	
		
	}
	con.close();
}
catch(Exception e)
{
	out.println(e);
}
%>