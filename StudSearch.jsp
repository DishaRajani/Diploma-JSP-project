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
               
table, td, th {    
    border: 1px solid #ddd;
    text-align: left;
}

table {
    border-collapse: collapse;
    width: 100%;
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
<%
String id,fnm,lnm,dnm,mnm,pno,dob,age,city,ste,yr,br;
String str,str1;

if(request.getParameter("column").equals("ADM_ID") || request.getParameter("column").equals("FNAME"))
str="Select * from student where " + request.getParameter("column") + request.getParameter("operator") +"'"+ request.getParameter("val")+"'";
else
str="Select * from student where " + request.getParameter("column") + request.getParameter("operator") + Integer.parseInt(request.getParameter("val"));
try{
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        Connection con=DriverManager.getConnection("jdbc:odbc:stud");
	PreparedStatement pst= con.prepareStatement(str);
	ResultSet rs1=pst.executeQuery();     
        out.println("<table style='background-color:#d7f7f6' align=center border=1>");                       
	out.println("<tr><th>ADM_ID</th><th>FNAME</th><th>LNAME</th><th>FATHERNAME</th><th>MOTHERNAME</th><th>PHONENO</th><th>DOB</th><th>AGE</th><th>CITY</th><th>STATE</th><th>YEAR</th><th>BRANCH</th></td>"         + "");
	
       while(rs1.next())
	 {
	id=rs1.getString(1);	
                fnm=rs1.getString(2);
                lnm=rs1.getString(3);
                dnm=rs1.getString(4);
                mnm=rs1.getString(5);
                pno=rs1.getString(6);
	dob=rs1.getString(7);
	age=rs1.getString(8);
	city=rs1.getString(9);
	ste=rs1.getString(10);
	yr=rs1.getString(11);
	br=rs1.getString(12);
             	out.println("<tr><td>"+id+"</td><td>"+fnm+"</td><td>"+lnm+"</td><td>"+dnm+"</td><td>"+mnm+"</td><td>"+ pno+"</td><td>"+ dob+"</td><td>"+ age);
out.println("</td><td>"+ city+"</td><td>"+ ste+"</td><td>"+ yr+"</td><td>"+ br+"</td></tr>");
	  }
	out.println("</table>");   
        con.close();  
    }
catch(Exception e)
{
    out.println(e);
}  
%>
