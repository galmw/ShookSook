<%@ page contentType="text/html; charset=utf-8" %>

<!DOCTYPE html>

<html>

<%@include file="include/head.jsp" %>

<body class="body">
	
<img src="images/bg1.jpg" alt="" class = "bg">

<%
String error = "Unknown";
if (session.getAttribute("error") == "no-login")
{
	session.setAttribute("error", "false");
	error= "You must be logged in order to view this page.";	
}
if (session.getAttribute("error") == "no-manager")
{
	session.setAttribute("error", "false");
	error= "You must be logged in and have manager access in order to view this page.";	
}
%>

<div id = "page-wrap">
	
	<div class="content">	
		<br>
		<br>
		<article class="article">				
			<header>
				<h2>No permission</h2>
				
				<h4> <%= error %> </h4>
				
				<h4><a href="index.jsp" rel="bookmark" title="Return Home">Return Home</a></h4>
			</header>	
		</article>		
	</div>
	
</div>

</body>
</html>