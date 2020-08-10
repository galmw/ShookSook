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
			<li><a href="map.jsp">Map</a></li>
			<li class="active"><a href="media.jsp">Media</a></li>
			<li><a href="game.jsp">Game</a></li>
		</ul></nav>
	</header>
		
	<div class="content">	
		<article class = "article">
			<header>
				<h2 class = "colored">Photo Gallery</h2>
			</header>
			
			<br>
			<button id = "go-back" class = "submit-decorate" onclick="previous(); return false;">Back</button>
			<img id="gallery" src="images/photo1.jpg" style="height:auto; width:70%">
			<button id = "go-next" class = "submit-decorate" onclick="next(); return false;">Next</button>		
		</article>

		<article class = "article">
			<header>
				<h2 class = "colored">Videos</h2>
			</header>
				<iframe class = "iframe center" id = "video" src="//www.youtube.com/embed/cuq3HyTvFeo"></iframe>
			<br/>
		</article>
	
	<%@include file="include/footer.jsp" %>
	
	</div>
	
</div>

</body>
</html>