<html>
<base target="_self">

<body bgcolor=#FFFFFF>
<%@ page import="java.sql.*"%>
<%
 
try
{
   Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
   Connection con=DriverManager.getConnection("jdbc:odbc:power");
%>
<% 
	String uname=request.getParameter("uname");
    String s2=request.getParameter("password");
   
  session.setAttribute("uname",uname);

   Statement st=con.createStatement();
   Statement st1=con.createStatement();
   
   ResultSet rs=st.executeQuery("select * from logindetails where UNAME='"+uname+"' and PASSWORD='"+s2+"'");

   if(rs.next())
	{
	   String s3= rs.getString(3);
	   
		if(s3.equals("admin"))
		  {
			response.sendRedirect("succes.jsp ");
		  }
	}

}
catch(Exception e)
{
System.out.println(e);
}
%>
</body>
                                                                                        </html>