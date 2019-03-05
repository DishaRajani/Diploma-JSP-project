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
      int mgt= Integer.parseInt(request.getParameter("t2"));
      int ap = Integer.parseInt(request.getParameter("t3"));
      int ed= Integer.parseInt(request.getParameter("t4"));
      int mco=Integer.parseInt(request.getParameter("t5"));
      int om=Integer.parseInt(request.getParameter("t6"));
      int st=Integer.parseInt(request.getParameter("t7"));
     
                      int total=mgt+ap+ed+mco+om+st;
	      double avg=total/6;
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
String str="Insert into sem6 values('"+seat+"',"+mgt+","+ap+","+ed+","+mco+","+om+","+st+","+total+","+avg+",'"+Grade+"');";

 try{
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        Connection con=DriverManager.getConnection("jdbc:odbc:stud");
	PreparedStatement pst= con.prepareStatement(str);
	int a =pst.executeUpdate(); 
        out.println("<center>");
        out.println("Data Entered<br>");
        String sql="select * from sem6";
	PreparedStatement dis= con.prepareStatement(sql);
	ResultSet rs=dis.executeQuery();
        out.println("<table>");                                 
	out.println("<tr><th>ID</th><th>MAN</th><th>AJP</th><th>EDE</th><th>MCO</th><th>OMD</th><th>STE<th>TOTAL</th><th>AVERAGE</th><th>GRADE</th></tr>"         + "");
	while(rs.next())
	 {
		
                seat=rs.getString(1);
                mgt=rs.getInt(2);
	ap=rs.getInt(3);
	ed=rs.getInt(4);
mco=rs.getInt(5);
om=rs.getInt(6);
st=rs.getInt(7);
total=rs.getInt(8);
avg=rs.getInt(9);
Grade=rs.getString(10);

             	out.println("<tr><td>"+seat+"</td><td>"+mgt+"</td><td>"+ap+"</td><td>"+ed+"</td><td>"+mco+"</td><td>"+
                        om+"</td><td>"+st+"</td><td>"+total+"</td><td>"+avg+"</td><td>"+Grade+"</td></tr>");
	  }
    }
 catch(Exception e)
 {out.println(e);}
                                                                                                                                                                                                         
	
%>


      	
      	