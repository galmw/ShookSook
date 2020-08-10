<%@ page contentType="text/html; charset=utf-8" %>

<!DOCTYPE html>

<jsp:useBean id="db" class = "jdbc.ForDataBase"/>

<html>

<%@include file="include/head.jsp" %>

<body class="body">
	
<img src="images/bg1.jpg" alt="" class = "bg">


<% 

String [][] stores = new String [10][10];

String referer	= request.getHeader("Referer");			
String input	= request.getParameter("input");

String sqlStr = "SELECT * FROM stores WHERE name LIKE '%" +  input + "%' OR creator LIKE '%" + input + "%' OR category LIKE '%" +  input + "%' OR address LIKE '%" +  input + "%' OR description LIKE '%" +  input + "%';";
stores = db.select(sqlStr);	

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
	
		<article class="article">
			<header  id = "searchbox">
				<form action="resultStores.jsp" method="GET">  		
  					<input id = "search-field" type="search" name = "input" placeholder="Search.." />
    				<input id = "search-submit" class = "submit-decorate" type="submit" value="Search" />
				</form>
			</header>
			
			<header class = "stores-show">
				<h2><a href = "stores.jsp">All Stores</a></h2>
			</header>

			<header class = "stores-show">
				<h2><a href="myStores.jsp" title="My Stores">My Stores</a></h2>
			</header>
			
			<header class = "stores-show">
				<h2><a href = addStore.jsp> Add your own Store</a></h2>
			</header>
		</article>
		<%
		if (stores.length == 0)
		{
			%>
		<article class = "article">
			<div class = "content-textblock">
				<p>There are no stores that match you search!</p>
			</div>
		</article>
 			<%
		}
		else
		{
			for (int i = 0; i <stores.length; i++)
			{
				%>
		<article class = "article">
			<div class = "content-imgbox">
				<img class = "content-img" src = "<%= stores[i][6] %>">
			</div>
			
			<header>
				<form class = "store-change" id = "full-store" action="store_page.jsp" method="GET">
					<input type="hidden" name="storeId" value= <%= stores[i][0] %>>
	   				<input type="submit" class = "submit-none title colored" value= "<%=stores[i][2] %>" />
				</form>
			</header>
			
			<footer class="post-info">
				<p><%= stores[i][3] %></p>
				<p><%= stores[i][4] %></p>
				<p>Added by <%= stores[i][1] %></p>
			</footer>
			
			<div class = "content-textblock">
				<p><%= stores[i][5] %></p>
			</div>
		</article>	
				<%
			}
		}
		%>
		
	</div>
	
	<%@include file="include/footer.jsp" %>		
	
</div>

</body>
</html>