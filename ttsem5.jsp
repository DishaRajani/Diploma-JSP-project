<%@page import="java.sql.*"%>

<%!                                                                  
	String tym,sname,schm,dt,dayy;
	int code;
%>
<%
 try{
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        Connection con=DriverManager.getConnection("jdbc:odbc:stud");
        String sql="select * from timetablesem5";
	PreparedStatement dis= con.prepareStatement(sql);
	ResultSet rs=dis.executeQuery();
out.println("<h1 align=center>TIME TABLE FOR SEM5</h1>");
        out.println("<table align=center border='1'>");                                 
	out.println("<tr><th>Time</th><th>SubCode</th><th>SubName</th><th>Schem</th><th>Date</th><th>Day</th></tr>");
	while(rs.next())
	 {
		
                tym=rs.getString(1);
                code=rs.getInt(2);
	sname=rs.getString(3);
	schm=rs.getString(4);
	dt=rs.getString(5);
	dayy=rs.getString(6);
             	out.println("<tr><td>"+tym+"</td><td>"+code+"</td><td>"+sname+"</td><td>"+schm+"</td><td>"+dt+"</td><td>"+dayy+"</td></tr>");
	  }
	out.println("</table>");
    }
 catch(Exception e)
 {out.println(e);}
%>
