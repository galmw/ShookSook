<%@ page contentType="text/html; charset=utf-8" %>

<!DOCTYPE html>


<html>

<%@include file="include/head.jsp" %>

<body class="body">
	
<img src="images/bg1.jpg" alt="" class = "bg">


<div id = "page-wrap">

	<header class="mainHeader">
		<%@include file="include/header.jsp" %>
		
		<nav><ul>
			<li><a href="index.jsp">Home</a></li>
			<li><a href="stores.jsp">Stores</a></li>
			<li><a href="holy.jsp">Holy Places</a></li>
			<li class="active"><a href="map.jsp">Map</a></li>
			<li><a href="media.jsp">Media</a></li>
			<li><a href="game.jsp">Game</a></li>
		</ul></nav>
	</header>
		
	<div class="content">	
	
		<article class="article">	
			<header>
				<h2 class = "colored">Map of The Old City</h2>
			</header>

			<div id=googlemap>
				<iframe class = "iframe" width="100%" height="500px" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d6783.464825240248!2d35.23248075767212!3d31.777783487800544!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x150329c8dc262c8b%3A0x9ab61a59c838a400!2sOld+City%2C+Jerusalem!5e0!3m2!1sen!2s!4v1433340273159"></iframe>
			</div>
			
			<br/>
			<a target = _blank href="https://www.google.com/maps/place/Old+City,+Jerusalem/@31.7777835,35.2324808,16z/data=!4m2!3m1!1s0x150329c8dc262c8b:0x9ab61a59c838a400">View Larger Map</a>
		</article>
	
	</div>
	
	<%@include file="include/footer.jsp" %>
	
</div>

</body>
</html>