<%@page import="java.sql.*"%>
<html>
<head>
<html>
<head>
<style>
ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #333;
}

li {
    float: left;
}

li a {
    display: block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

li a:hover:not(.active) {
    background-color: #111;
}

.active {
    background-color: #4CAF50;
}
 body{
    background-image: url("");
               }
table, td, th {    
    border: 1px solid #ddd;
    text-align: left;
}

table {
    border-collapse: collapse;
    width: 20%;
}

th, td {
    padding: 15px;
}
th {
    background-color: #4CAF50;
    color: white;
}
</style>
</head>
<body>
<h1 align="center"><font style="Arial">S.H.M IT INSTITUTE OF TECHNOLOGY</font></h1>
<ul>
  <li><a class="active" href="http://localhost:8080/projecttt/Login.html">Login</a></li>
  <li><a href=""http://localhost:8080/projecttt/home.html">Home</a></li>
  <li><a href="#news">News</a></li>
  <li><a href="#contact">Contact</a></li>
  <li><a href="#about">About</a></li>
</ul>
<center>

<%!                                                                  
	String tym,sname,schm,dt,dayy;
	int code;
%>
<%
 try{
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        Connection con=DriverManager.getConnection("jdbc:odbc:stud");
        String sql="select * from timetablesem6";
	PreparedStatement dis= con.prepareStatement(sql);
	ResultSet rs=dis.executeQuery();
out.println("<h1><font color='blue'>Time Table for Sem-6</font></h1>");
        out.println("<table>");                                 
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
