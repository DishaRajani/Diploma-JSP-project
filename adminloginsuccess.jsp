<%@page import="java.util.*"%>
<%
String username=(String)session.getAttribute("username");
%>
<html>
<head>
<title>Admin Login</title>
<style type="text/css">
            body{
                color: red;
                background-color: yellow;
                font-family:"Comic Sans MS",serif,cursive;
                font-size:20px;
            }
             .input{
                font-family: "Comic Sans MS",serif,cursive;
               font-size:20px;
                    height:40;
                    width: 120;
                color:red;
            }
        </style>
</head>
<body>
<center>
<form>
<h1>****Admin Login Successful ...Welcome**** <%=username%>.</h1>
<a href="home.html">Continue...</a>
</form>
</center>
</body>
</html>