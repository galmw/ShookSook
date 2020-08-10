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
				<h2><a href="stores.jsp" title="All Stores">All Stores</a></h2>
			</header>

			<header class = "stores-show">
				<h2><a href="myStores.jsp" title="My Stores">My Stores</a></h2>
			</header>
			
			<header class = "stores-show">
				<h2>Add your own Store</h2>
			</header>
		</article>
		
		<%
		if (session.getAttribute("login_success") != "true")
		{
			%>
		<article class="article">	
			<header>
				<h2 class = "colored">Login Required</h2>
			</header>
			
			<div class = "content-textblock">
				<p>You need to be logged in in order to view this page.</p>
			</div>
		</article>
		
		<%
		}
		else
		{
			%>
	
		<article class="article">	
			<header>
				<h2 class = "colored">Add Store</h2>
			</header>

			<form class = "store-form" action="jsp/store_add.jsp" onsubmit="return validStore(this)" method="POST">  		
  				<input class = "store-input" type="text" name = "name" required placeholder="Store Name" />
  				<input class = "store-input" type="text" name="category" required placeholder="Category" />
    			<input class = "store-input" type="text" name="address" required placeholder="Address" />	
  				<textarea id = "store-input4" name="description" placeholder="Add a description of your store here" required></textarea>
  				<input class = "store-input" type="url" name="img_url" required placeholder="URL for store image" />
    			<input id = "store-input6" class = "submit-decorate" type="submit" value="Submit Store" />
			</form>
		</article>
			<%
		}
		%>		
	</div>
	
	<%@include file="include/footer.jsp" %>		
	
</div>


<script>
function validStore(form)
{
	
	if (form.name.value == "" || form.category.value == "" || form.address.value == "" || form.img_url.value == "")
		{
			alert("You must fill out all of the fields!");
			return false;
		}
	return true;
}


/* 	
	var name = form.name.value;
	var category = form.category.value;
	var address = form.address.value;
	var description = form.description.value;
	
	if (name === "" || name.length < 2)
	{
		alert("Name must be filled out and have atleast 2 characters");
		form.username.focus();
		return false;
	}
	if (category === "" || category.length < 2)
	{
		alert("Category must be filled out and have atleast 2 characters");
		form.category.focus();
		return false;
	}	
	if (address === "" || address.length < 2)
	{
		alert("Address must be filled out and have atleast 2 characters");
		form.address.focus();
		return false;
	}	
	if (description === "" || description.length < 2)
	{
		alert("Description must be filled out and have atleast 2 characters");
		form.description.focus();
		return false;
	}
 */

</script>

</body>
</html>