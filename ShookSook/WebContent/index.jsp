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
			<li class="active"><a href="index.jsp">Home</a></li>
			<li><a href="stores.jsp">Stores</a></li>
			<li><a href="holy.jsp">Holy Places</a></li>
			<li><a href="map.jsp">Map</a></li>
			<li><a href="media.jsp">Media</a></li>
			<li><a href="game.jsp">Game</a></li>			
		</ul></nav>
	
	</header>
	
	<div class="content">	
	
		<article class="article">
			<div class = "content-imgbox">
				<img class = "content-img" src = "images/oldcity1.jpg">
			</div>
						
			<header>
				<h2 class = "colored">What is ShookSook?</h2>
			</header>

			<div class = "content-textblock">
				<p>ShookSook is a website that helps shopkeepers, customers and tourists go around the Old City of Jerusalem and explore its stores.</p>
				<p>We combine all of the popular and remarkable places in the Old City in one easy to use and simple website.</p>
			</div>
		</article>

		<article class="article">
			<div class = "content-imgbox">
				<img class = "content-img" src = "images/oldcity2.jpg">
			</div>
			
			<header>
				<h2 class = "colored">What does it do?</h2>
			</header>
					
			<div class = "content-textblock">
				<p>ShookSook allows shopkeepers to sign up and add their businesses online to ShookSook, which gives them the opportunity to be exposed to more customers.</p>
				<p>Tourists can discover the Old City online and find their desired destination Easily. In addition, customers can check out the stores in the Old City and what they sell.</p>
			</div>
		</article>
				
	</div>
	
	<%@include file="include/footer.jsp" %>
	
</div>

</body>
</html>