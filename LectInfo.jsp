
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
	String fname,lname,subject,cls,qualification,id;
%>
<%
String id=request.getParameter("seat");
  String fname=request.getParameter("fname");
 String lname=request.getParameter("lname");
 String subject=request.getParameter("subject");
 String cls=request.getParameter("class");
 String qualification=request.getParameter("qualification");
 


String str="Insert into Lecturer values("+id+",'"+fname+"','"+lname+"','"+subject+"','"+cls+"','"+qualification+"');";

 try{
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        Connection con=DriverManager.getConnection("jdbc:odbc:stud");
	PreparedStatement pst= con.prepareStatement(str);
	int a =pst.executeUpdate(); 
        out.println("<center>");
        out.println("<h1><font color='red'>Inserted Details</font></h1><br>");
        String sql="select * from Lecturer";
	PreparedStatement dis= con.prepareStatement(sql);
	ResultSet rs=dis.executeQuery();
        out.println("<table >");                                 
	out.println("<tr><th>ID</th><th>Fname</th><th>Lname</th><th>Subject</th><th>Class</th><th>Qualification</th></td>"         + "");
	while(rs.next())
	 {
	id=rs.getString(1);	
                fname=rs.getString(2);
                lname=rs.getString(3);
                subject=rs.getString(4);
                cls=rs.getString(5);
                qualification=rs.getString(6);
             	out.println("<tr><td>"+id+"</td><td>"+fname+"</td><td>"+lname+"</td><td>"+subject+"</td><td>"+
                        cls+"</td><td>"+qualification+"</td></tr>");
	  }
    }
 catch(Exception e)
 {out.println(e);}
                                                                                                                                                                                                         
	
%>

