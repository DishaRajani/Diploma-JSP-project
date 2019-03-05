<%@page import="java.util.*"%>
<%
String username=(String)session.getAttribute("username");
%>
<html>
<head>
<title>user login success</title>
</head>
<body class="a">
<center>
<form>
<h1>****User Login Successful Welcome <%=username%>****</h1>
<a href="UserHomeome.html">Continue...</a>
</form>
</center>
</body>
</html>