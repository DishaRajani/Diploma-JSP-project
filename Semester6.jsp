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
String id,mgt,ajp,ede,mco,omd,ste,total,avg,Grade;
%>
<%
try{
String value=request.getParameter("t1");
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:stud");
String sqlstr="SELECT * FROM sem6 WHERE seat='"+value+"'";
        PreparedStatement pst = con.prepareStatement(sqlstr);
        ResultSet rs=pst.executeQuery();
out.println("<table>");          
out.println("<tr><th>SEAT_NO</th><th>MANAGEMENT</th><th>AJP</th><th>EDE</th><th>MCO</th><th>OOMD</th><th>STE</th><th>TOTAL</th><th>AVERAGE</th><th>GRADE</th></tr>");
while(rs.next())
{
id=rs.getString(1);
mgt=rs.getString(2);
ajp=rs.getString(3);
ede=rs.getString(4);
mco=rs.getString(5);
omd=rs.getString(6);
ste=rs.getString(7);
total=rs.getString(8);
avg=rs.getString(9);
Grade=rs.getString(10);

out.println("<tr><td>"+id+"</td><td>"+mgt+"</td><td>"+ajp+"</td><td>"+ede+"</td><td>"+mco+"</td><td>"+omd+"</td><td>"+ste+"</td><td>"+total+"</td><td>"+avg+"</td><td>"+Grade+"</td></tr>");
}
out.println("</table>");
rs.close();
pst.close();
        con.close();  
    }
catch(Exception e)
{
    out.println(e);
}  
%>
