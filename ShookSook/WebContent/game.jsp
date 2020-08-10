<%@ page contentType="text/html; charset=utf-8" %>

<!DOCTYPE html>


<html>

<%@include file="include/head.jsp" %>

<body class="body">
	
<img src="images/bg1.jpg" alt="" class = "bg">


<script type="text/javascript">
var domeValue, wallValue, churchValue;
var images = ["images/gameDome.jpg", "images/gameWall.jpg", "images/gameChurch.jpg"];
var values = [];
var rowSums;
var colSums;
var rnd; 
function startGame(){
	document.getElementById("domeValue").value = "";
	document.getElementById("wallValue").value = "";
	document.getElementById("churchValue").value = "";
	rowSums = [0,0,0];
	colSums = [0,0,0];
	values = [Math.floor(Math.random()*10+1),Math.floor(Math.random()*10+1),Math.floor(Math.random()*10+1)];
	for (var i = 0; i<3;i++){
		for(var j = 0;j<3;j++){
				rnd = Math.floor(Math.random()*3);
				document.getElementById("cell"+(i*3+j+1)).src = images[rnd];
				rowSums[i] += values[rnd];
				colSums[j] += values[rnd];
		}
	}
	for (var x = 0; x<3;x++)
	{
		document.getElementById("row"+x).innerHTML = "<b>" + rowSums[x] + "</b>";
		document.getElementById("col"+x).innerHTML = "<b>" + colSums[x] + "</b>";
	}
}

function check(){
	if (document.getElementById("domeValue").value == values[0]
	&& document.getElementById("wallValue").value == values[1]
	&& document.getElementById("churchValue").value == values[2])
	{
		alert("You win! Play again :)");
		startGame();
	}
	else
	{
		alert("Nope. Keep trying");
	}
}
</script>

<div id = "page-wrap">

	<header class="mainHeader">
		<%@include file="include/header.jsp" %>
		
		<nav><ul>
			<li><a href="index.jsp">Home</a></li>
			<li><a href="stores.jsp">Stores</a></li>
			<li><a href="holy.jsp">Holy Places</a></li>
			<li><a href="map.jsp">Map</a></li>
			<li><a href="media.jsp">Media</a></li>
			<li class="active"><a href="game.jsp">Game</a></li>
		</ul></nav>
	</header>
		
	<div class="content">	
		<article class = "article">
			<header class = "center">	
				<h2 class = "colored" style = "text-align:center">Find the value of each picture!</h2>
				<h4>The sum of every column and row appears in the end of each column/row.</h4>
			</header>
			
			<table class = "center">
			<%
			for (int i = 0; i<3; i++)
			{
				%>
				<tr>
				<%
				for (int j = 0; j<3; j++){
					%>
					<td><img id = "cell<%=i*3+j+1 %>" src = "" style = "width:200px;height:200px;"></td>
					<%
					}
					%>
					<td id = "row<%=i%>"></td>
				</tr>
				<%
			}
			%>
				<tr>
			<%
			for (int j = 0; j< 3; j++)
			{
				%>
				<td id = "col<%=j%>"></td>
				<%
			}
			%>
				</tr>
			</table>
		
			<br>
			
			<div class = "fit">
				<div class = "stores-show third center">
					<footer class = "post-info center">
						<img src="images/gameDome.jpg" style = "width:80px;height:80px;">
					</footer>
					<header class = "center">
						<input id = "domeValue" placeholder = "Value">
					</header>
				</div>
				
				<div class = "stores-show third center">
					<footer class = "post-info center">
						<img src="images/gameWall.jpg"  style = "width:80px;height:80px;">
					</footer>
					<header class = "center">
						<input id = "wallValue" placeholder = "Value">
					</header>
				</div>
				
				<div class = "stores-show third center">
					<footer class = "post-info center">
						<img src="images/gameChurch.jpg"  style = "width:80px;height:80px;">
					</footer>
					<header class = "center">
						<input id = "churchValue" placeholder = "Value">
					</header>
				</div>
			</div>
			
			<br>
			<br>
			<br>
			
			<div style="text-align:center;">
				<button id = "maintainSubmit1" class = "submit-decorate" onclick = "check();">Check</button>
				<button id = "maintainSubmit2" class = "submit-decorate" onclick = "startGame();">Restart</button>
			</div>		
		</article>
	
	</div>
	
	<%@include file="include/footer.jsp" %>
	
</div>

<script type="text/javascript">startGame();</script>

</body>
</html>