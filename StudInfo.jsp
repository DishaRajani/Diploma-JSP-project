
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
	String id,fnm,lnm,dnm,mnm,pno,dob,age,city,ste,yr,br;
%>
<%
id=request.getParameter("t1");
fnm=request.getParameter("t2");
lnm=request.getParameter("t3");
dnm=request.getParameter("t4");
mnm=request.getParameter("t5");
pno=request.getParameter("t6");
dob=request.getParameter("t7");
age=request.getParameter("t8");
city=request.getParameter("t9");
ste=request.getParameter("t10");
yr=request.getParameter("t11");
br=request.getParameter("t12");

String str="Insert into student values('"+id+"','"+fnm+"','"+lnm+"','"+dnm+"','"+mnm+"','"+pno+"','"+
dob+"','"+age+"','"+city+"','"+ste+"','"+yr+"','"+br+"');";

 try{
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        Connection con=DriverManager.getConnection("jdbc:odbc:stud");
	PreparedStatement pst= con.prepareStatement(str);
	int a =pst.executeUpdate(); 
        out.println("<center>");
        out.println("<h1><font color='red'>Inserted Details</font></h1>");
        String sql="select * from student";
	PreparedStatement dis= con.prepareStatement(sql);
	ResultSet rs=dis.executeQuery();
      out.println("<table>");                     
	out.println("<tr><th>ADM_ID</th><th>FNAME</th><th>LNAME</th><th>FATHERNAME</th><th>MOTHERNAME</th><th>PHONENO</th><th>DOB</th><th>AGE</th><th>CITY</th><th>STATE</th><th>YEAR</th><th>BRANCH</th></td>"         + "");
	while(rs.next())
	 {
	id=rs.getString(1);	
                fnm=rs.getString(2);
                lnm=rs.getString(3);
                dnm=rs.getString(4);
                mnm=rs.getString(5);
                pno=rs.getString(6);
	dob=rs.getString(7);
	age=rs.getString(8);
	city=rs.getString(9);
	ste=rs.getString(10);
	yr=rs.getString(11);
	br=rs.getString(12);
             	out.println("<tr><td>"+id+"</td><td>"+fnm+"</td><td>"+lnm+"</td><td>"+dnm+"</td><td>"+mnm+"</td><td>"+ pno+"</td><td>"+ dob+"</td><td>"+ age+"</td><td>"+ city+"</td><td>"+ ste+"</td><td>"+ yr+"</td><td>"+ br+"</td></tr>");
	  }
    }
 catch(Exception e)
 {out.println(e);}
                                                                                                                                                                                                         
	
%>

