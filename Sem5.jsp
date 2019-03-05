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


<%    String seat = request.getParameter("t1");
      int os= Integer.parseInt(request.getParameter("t2"));
      int se = Integer.parseInt(request.getParameter("t3"));
      int is= Integer.parseInt(request.getParameter("t4"));
      int jva=Integer.parseInt(request.getParameter("t5"));
      int ct=Integer.parseInt(request.getParameter("t6"));
     
                      int total=os+se+is+jva+ct;
	      float avg=total/5;
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

      	
      	String str="Insert into sem5 values('"+seat+"',"+os+","+se+","+is+","+jva+","+ct+","+total+","+avg+",'"+Grade+"');";

 try{
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        Connection con=DriverManager.getConnection("jdbc:odbc:stud");
	PreparedStatement pst= con.prepareStatement(str);
	int a =pst.executeUpdate(); 
        out.println("<center>");
        out.println("Data Entered<br>");
        String sql="select * from sem5";
	PreparedStatement dis= con.prepareStatement(sql);
	ResultSet rs=dis.executeQuery();
        out.println("<table>");                                 
	out.println("<tr><th>ID</th><th>OSY</th><th>SEN</th><th>ISE</th><th>JAVA</th><th>CTE<th>TOTAL</th><th>AVERAGE</th><th>GRADE</th></tr>"   +" ");
	while(rs.next())
	 {
		
                seat=rs.getString(1);
                os=rs.getInt(2);
	se=rs.getInt(3);
	is=rs.getInt(4);
jva=rs.getInt(5);
ct=rs.getInt(6);
total=rs.getInt(7);
avg=rs.getInt(8);
Grade=rs.getString(9);

             	out.println("<tr><td>"+seat+"</td><td>"+os+"</td><td>"+se+"</td><td>"+is+"</td><td>"+jva+"</td><td>"+ct+"</td><td>"+total+"</td><td>"+avg+"</td><td>"+Grade+"</td></tr>");
	  }
    }
 catch(Exception e)
 {out.println(e);}
                                                                                                                                                                                                         
	
%>

