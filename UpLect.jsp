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
        String fname2,cls2,lname2,subject2,qual2,dis1,upd,dis,col,val1,condition,val2,opr,id1;
      	String fname1,cls1,lname1,subject1,qual1,id2;
%>
<%
 col=request.getParameter("column");
val1=request.getParameter("val1");
 condition=request.getParameter("condition");
val2=request.getParameter("val2");
opr=request.getParameter("opr");
 out.println("<center>");
 try{
      Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        Connection con=DriverManager.getConnection("jdbc:odbc:stud");
        if(condition.equals("Id") || condition.equals("Class"))
        dis = "Select * from Lecturer where " + condition + "='" + val2+"'";
        else
        dis = "Select * from Lecturer where " + condition + "=" + val2;
        PreparedStatement pst= con.prepareStatement(dis);
        ResultSet rs1=pst.executeQuery(); 
        out.println("Old Data<br>");
out.println("<table>");                                  
	out.println("<tr><th>Emp ID</th><th>First Name</th><th>Last Name</th><th>Subject</th><th>Class</th><th>Qualification</th></tr>");

while(rs1.next())
	 {
	id2=rs1.getString(1);
                fname2=rs1.getString(2);
                lname2=rs1.getString(3);
                subject2=rs1.getString(4);
                cls2=rs1.getString(5);
                qual2=rs1.getString(6);
		 }
        out.println("<tr><td>" +id2+ "</td><td>" +fname2+ "</td><td>" +lname2+ "</td><td>" +subject2+ "</td><td>" +cls2+ "</td><td>" +qual2+"</td></tr>");
	 
	out.println("</table>"); 
        
        if(col.equals("Id") || col.equals("Class"))
        upd="Update Lecturer set " + col + "='"+val1+"'";
        else
        upd="Update Lecturer set " + col + "='"+val1+"'";
        if(condition.equals("0")==false )
        {
        if(condition.equals("Id") || condition.equals("Class"))
        upd=upd+" where " + condition + opr + "'"+ val2+"'";
        else
        upd=upd+" where " + condition + opr +val2;
        }
        PreparedStatement pst1= con.prepareStatement(upd);
	int a=pst1.executeUpdate(); 



        if(col.equals("Id") || col.equals("Fname"))
        dis1 = "Select * from Lecturer where " + col + "='" + val1+"'";
        else
        dis1 = "Select * from Lecturer where " + col + "=" + val1;
        PreparedStatement pst2= con.prepareStatement(dis1);
        ResultSet rs2=pst2.executeQuery();
        out.println("New Data<br>");
	 out.println("<table>");                                 
	out.println("<tr><th>Emp ID</th><th>First Name</th><th>Last Name</th><th>Subject</th><th>Class</th><th>Qualification</th></tr>");

	while(rs2.next())
	 {
		id1=rs2.getString(1);
                fname1=rs2.getString(2);
                lname1=rs2.getString(3);
                subject1=rs2.getString(4);
                cls1=rs2.getString(5);
                qual1=rs2.getString(6);
		
	  }
        out.println("<tr><td>" +id1+ "</td><td>" +fname1+ "</td><td>" +lname1+ "</td><td>" +subject1+ "</td><td>" +cls1+ "</td><td>" +qual1+"</td></tr>");
                out.println("</center>");
	out.println("</table>"); 
        con.close();
 }
 catch(Exception e)
 {
     out.println(e);
 }

%>


