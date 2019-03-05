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


<%     String seat = request.getParameter("t1");
      int physics= Integer.parseInt(request.getParameter("t2"));
      int chm = Integer.parseInt(request.getParameter("t3"));
      int mth= Integer.parseInt(request.getParameter("t4"));
      int eng =Integer.parseInt(request.getParameter("t5"));
      
     
                      int total=physics+chm+mth+eng;
	      float avg=total/4;
	      String Grade;
	      if(avg>80)
	      {
		Grade="A";
	      }
	      else if(avg<80 && avg>55)
	     {
		Grade="B";
	     }
	     else
	     {
		Grade="C";
	     }

      		String str="Insert into sem1 values('"+seat+"',"+physics+","+chm+","+mth+","+eng+","+total+","+avg+",'"+Grade+"');";

 try{
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        Connection con=DriverManager.getConnection("jdbc:odbc:stud");
	PreparedStatement pst= con.prepareStatement(str);
	int a =pst.executeUpdate(); 
        out.println("<center>");
        out.println("<h1><font color='red'>Data Entered</font></h1><br>");
        String sql="select * from sem1";
	PreparedStatement dis= con.prepareStatement(sql);
	ResultSet rs=dis.executeQuery();
        out.println("<table>");                                 
	out.println("<tr><th>ID</th><th>physics</th><th>CHM</th><th>MATH</th><th>ENG</th><th>TOTAL</th><th>AVERAGE</th><th>GRADE</th></tr>"   +" ");
	while(rs.next())
	 {
		
                seat=rs.getString(1);
                physics=rs.getInt(2);
	chm=rs.getInt(3);
	mth=rs.getInt(4);
eng=rs.getInt(5);
total=rs.getInt(6);
avg=rs.getInt(7);
Grade=rs.getString(8);

             	out.println("<tr><td>"+seat+"</td><td>"+physics+"</td><td>"+chm+"</td><td>"+mth+"</td><td>"+eng+"</td><td>"+total+"</td><td>"+avg+"</td><td>"+Grade+"</td></tr>");
	  }
    }
 catch(Exception e)
 {out.println(e);}
                                                                                                                                                                                                         
	
%>