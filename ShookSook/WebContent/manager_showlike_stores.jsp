<%@ page contentType="text/html; charset=utf-8" %>

<!DOCTYPE html>

<jsp:useBean id="db" class = "jdbc.ForDataBase"/>

<html>

<%@include file="include/head.jsp" %>

<body class="body">

<img src="images/bg1.jpg" alt="" class = "bg">

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
	if (whatToShow.equals("storeName")){
		out.print("Stores");
		sqlStr = "select * from stores where (name like '%"+keyWord + "%');";}
	if (whatToShow.equals("description")){
		out.print("Stores");
		sqlStr = "select * from stores where (description like '%"+keyWord + "%');";}
	if (whatToShow.equals("category")){
		out.print("Stores");
		sqlStr = "select * from stores where (category like '%"+keyWord + "%');";}
	System.out.println("str: "+sqlStr);
	rs = db.select(sqlStr);
}
%>

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
				<h2 class = "colored">Stores</h2>
			</header>

				<table style = "width:100%">
		  			<tr bgColor = lightgray>
		    			<th>ID</th>
		    			<th>Creator</th>
		    			<th>Name</th>
		    			<th>Category</th>
		    			<th>Address</th>
		    			<th>Description</th>
		    			<th>Image URL</th>
		 			</tr>
		 			
		 			<% 	
		  			int j,i;
		  			for(i = 0 ; i < rs.length ; i++)
		  			{
						out.println("<tr>");
						for(j = 0 ; j < rs[i].length ; j++)
						{
							if(j == 2)
								out.println("<td> <div style = \"width:60px; display:block;\">" + rs[i][j] + "</div></td>");
							else if(j == 4)
								out.println("<td> <div style = \"width:60px; display:block;\">" + rs[i][j] + "</div></td>");
							else if(j == 5)
								out.println("<td> <div>" + rs[i][j] + "</div></td>");
							else if(j == 6)
								out.println("<td> <div style = \"width:150px; display:block; word-wrap: break-word;\"> <img src=" + rs[i][j] + " style = \"width:150px; height:auto\"></div></td>");
							else
								out.println("<td>" + rs[i][j] + "</td>");
						}
						out.println("</tr>");
					}
					%>
					
				</table>
				<br>
				
				<div style = "width:100%; overflow: hidden;">
				<div style = "float:left; margin-right:30px;">
					<h4 class = "colored">Edit Store</h4>
					<form id = "deletebox" action="storeEdit.jsp" method="GET">  		
  						<input id = "store_id" type="text" class = "input-decorate width200" name = "storeId" placeholder="Enter Store ID" />
    					<input id = "submit" type="submit" class = "submit-decorate" value="Edit" />
					</form>
				</div>
				<div style = "float:left;">
					<h4 class = "colored">Delete Store</h4>
					<form id = "deletebox" action="jsp/store_delete.jsp" method="POST">  		
  						<input id = "store_id" type="text" class = "input-decorate width200" name = "storeId" placeholder="Enter Store ID" />
    					<input id = "submit" type="submit" class = "submit-decorate" value="Delete" />
					</form>
				</div>
				</div>

				<br>
				<p><a href = "manager.jsp">Back to Manager Page</a></p>

		</article>
					
	</div>
	
	<%@include file="../include/footer.jsp" %>
	
</div>

</body>
</html>