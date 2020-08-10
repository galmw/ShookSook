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
			<li class="active"><a href="holy.jsp">Holy Places</a></li>
			<li><a href="map.jsp">Map</a></li>
			<li><a href="media.jsp">Media</a></li>
			<li><a href="game.jsp">Game</a></li>
		</ul></nav>
	</header>
		
	<div class="content">	

		<article class="article">
			<div class = "content-imgbox">
				<img class = "content-img" src = "images/wall.jpg">
			</div>
			
			<header>
				<h2><a href="http://en.wikipedia.org/wiki/Western_Wall" target = _blank title="The Western Wall">The Western Wall</a></h2>
			</header>
					
			<div class = "content-textblock">
				<p>Is located in the Old City of Jerusalem at the foot of the western side of the Temple Mount. It is a remnant of the ancient wall that surrounded the Jewish Temple's courtyard</p> 			
			</div>
		</article>
		
		<article class="article">
			<div class = "content-imgbox">
				<img class = "content-img" src = "images/dome.jpg">
			</div>
						
			<header>
				<h2><a href="https://en.wikipedia.org/wiki/Dome_of_the_Rock" target = _blank title="Dome of the Rock">Dome of the Rock</a></h2>
			</header>
			
			<div class = "content-textblock">
				<p> is a shrine located on the Temple Mount in the Old City of Jerusalem. The structure has been refurbished many times since its initial completion in 691 CE at the order of Umayyad Caliph Abd al-Malik. </p>
			</div>
		</article>

		<article class="article">
			<div class = "content-imgbox">
				<img class = "content-img" src = "images/church.JPG">
			</div>
			
			<header>
				<h2><a href="https://en.wikipedia.org/wiki/Church_of_the_Holy_Sepulchre" target = _blank title="Church of the Holy Sepulchre">Church of the Holy Sepulchre</a></h2>
			</header>
					
			<div class = "content-textblock">
 				<p>It's also called the Basilica of the Holy Sepulchre, or the Church of the Resurrection by Eastern Christians, is a church within the Christian Quarter of the walled Old City of Jerusalem. It is a few steps away from the Muristan.</p>
 			</div>
		</article>
				
	</div>
	
	<%@include file="include/footer.jsp" %>
	
</div>

</body>
</html>