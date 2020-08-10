<%@ page contentType="text/html; charset=utf-8" %>

<!DOCTYPE html>

<jsp:useBean id="db" class = "jdbc.ForDataBase"/>

<html>

<%@include file="include/head.jsp" %>

<body class="body">
	
<img src="images/bg1.jpg" alt="" class = "bg">

<%
String storeId = request.getParameter("storeId");
String back = request.getHeader("referer");
String sqlStr = "SELECT * FROM stores WHERE id = '" +  storeId + "';";
String [][] stores = db.select(sqlStr);
%>

<div id = "page-wrap">

	<header class="mainHeader">
		<%@include file="include/header.jsp" %>		
		
		<nav><ul>
			<li><a href="index.jsp">Home</a></li>
			<li class="active"><a href="stores.jsp">Stores</a></li>
			<li><a href="holy.jsp">Holy Places</a></li>
			<li><a href="map.jsp">Map</a></li>
			<li><a href="media.jsp">Media</a></li>
			<li><a href="game.jsp">Game</a></li>
		</ul></nav>
	</header>
		
	<div class="content">	
		<%
		if (stores.length == 0)
		{
		%>
		<article>
			<div class = "content-textblock">
				<p>There are no stores Yet!</p>
			</div>
		</article>
 		<%
		}
		else
		{
		%>
		<article class="article">
			<header class = "stores-show center">
				<h2 class = "colored"><%= stores[0][2] %></h2>
			</header>
		</article>
		
		<article class = "article">		
			<div>
				<p class = "storepage-text"><a href = "<%= back %>">Back</a></p>
			</div>
			
			<div class = "fit">
				<div class = "stores-show third center">
					<footer class = "post-info center">
						<h6>Category</h6>
					</footer>
					<header class = "center">
						<h4><%= stores[0][3] %></h4>
					</header>
				</div>
				
				<div class = "stores-show third center">
					<footer class = "post-info center">
						<h6>Address</h6>
					</footer>
					<header class = "center">
						<h4><%= stores[0][4] %></h4>
					</header>
				</div>
				
				<div class = "stores-show third center">
					<footer class = "post-info center">
						<h6>Added by</h6>
					</footer>
					<header class = "center">
						<h4><%= stores[0][1] %></h4>
					</header>
				</div>
			</div>
			
			<div>
				<p class = "storepage-text"><%= stores[0][5] %></p>
			</div>
			
			<br>
			<div>
				<img class = "storepage content-img" src = "<%= stores[0][6] %>">
			</div>

		</article>					
				<%
			}
		%>
	</div>
	
	<%@include file="include/footer.jsp" %>		
	
</div>

</body>
</html>