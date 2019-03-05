
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
	String roll,dt,atten;
%>
<%
roll=request.getParameter("t1");
dt=request.getParameter("t2");
atten=request.getParameter("command");

String str="Insert into atten values('"+roll+"','"+dt+"','"+atten+"');";

 try{
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        Connection con=DriverManager.getConnection("jdbc:odbc:stud");
	PreparedStatement pst= con.prepareStatement(str);
	int a =pst.executeUpdate(); 
        out.println("<center>");
        out.println("<h1><font color='red'>Attendance Report</font></h1><br>");
        String sql="select * from atten";
	PreparedStatement dis= con.prepareStatement(sql);
	ResultSet rs=dis.executeQuery();
        out.println("<table>");                                 
	out.println("<tr><th>Roll_no</th><th>Date</th><th>Attendance</th></td>"         + "");
	while(rs.next())
	 {
	roll=rs.getString(1);	
                dt=rs.getString(2);
               atten=rs.getString(3);
                
             	out.println("<tr><td>"+roll+"</td><td>"+dt+"</td><td>"+atten+"</td></tr>");
	  }
    }
 catch(Exception e)
 {out.println(e);}
                                                                                                                                                                                                         
	
%>




