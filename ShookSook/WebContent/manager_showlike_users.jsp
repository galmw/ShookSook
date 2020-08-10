<%@ page contentType="text/html; charset=utf-8" %>

<!DOCTYPE html>

<jsp:useBean id="db" class = "jdbc.ForDataBase"/>

<html>

<%@include file="include/head.jsp" %>

<body class="body">


<%
String [][] rs = new String [0][0];

// בדיקה אם המשתמש אכן מנהל ומחובר 
if (session.getAttribute("login_success") != "true" || session.getAttribute("manager") != "true")
{	
	session.setAttribute("error", "no-manager");
	response.sendRedirect("invalid.jsp");
}

else
{
	String whatToShow = request.getParameter("whatToShow");
	String sqlStr = "";
	String keyWord = request.getParameter("keyWord");
	System.out.println(whatToShow);
	System.out.println(keyWord);
	if (whatToShow.equals("username")){
		out.print("Users");
		sqlStr = "select * from users where (username like '%"+keyWord + "%');";}
	if (whatToShow.equals("name")){
		out.print("Users");
		sqlStr = "select * from users where (first_name like '%"+keyWord + "%' or last_name like '%"+keyWord + "%');";}
	if (whatToShow.equals("email")){
		out.print("Users");
		sqlStr = "select * from users where (email like '%"+keyWord + "%');";}
	System.out.println("str: "+sqlStr);
	rs = db.select(sqlStr);
}
%>


<img src="images/bg1.jpg" alt="" class = "bg">

<div id = "page-wrap">

	<header class="mainHeader">
		<%@include file="../include/header.jsp" %>
	
		<nav><ul>
			<li><a href="index.jsp">Home</a></li>
			<li><a href="stores.jsp">Stores</a></li>
			<li><a href="holy.jsp">Holy Places</a></li>
			<li><a href="map.jsp">Map</a></li>
			<li><a href="media.jsp">Media</a></li>
			<li><a href="game.jsp">Game</a></li>
		</ul></nav>
	
	</header>
	
	<div class="content">	
	
		<article class="article">				
			<header>
				<h2 class = "colored">Users</h2>
			</header>

			<table>
		  		<tr bgColor = lightgray>
		   			<th style = "margin:5px;"> ID</th>
		   			<th style = "margin:5px;">Username</th>
		   			<th>Password</th>
		   			<th>Email</th>
		   			<th>First Name</th>
		   			<th>Last Name</th>
		   			<th>Sex</th>
		   			<th>Birth Date</th>
		   			<th>Manager?</th>
		 			</tr>
		 			
		 		<% 	
		  		int j,i;
		  		for(i = 0 ; i < rs.length ; i++)
		  		{
					out.println("<tr>");
					for(j = 0 ; j < rs[i].length ; j++)
					{
						out.println("<td> <div style = \"margin:5px;\">" + rs[i][j] + "</div> </td>");
					}
					out.println("</tr>");
				}
				%>
					
			</table>
			<br>
				
			<h4 class = "colored">Delete User</h4>
			<form id = "deletebox" action="jsp/manager_delete_user.jsp" method="POST">  		
  				<input id = "user_id" type="text" class = "input-decorate width200" name = "id" placeholder="Enter User ID" />
    			<input id = "submit" type="submit" class = "submit-decorate" value="Delete" />
			</form>
				
			<br>
			<p><a href = "manager.jsp">Back to Manager Page</a></p>
		</article>
					
	</div>
	
	<%@include file="../include/footer.jsp" %>
	
</div>

</body>
</html>