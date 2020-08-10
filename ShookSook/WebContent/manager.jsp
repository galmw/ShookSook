<%@ page contentType="text/html; charset=utf-8" %>

<!DOCTYPE html>

<jsp:useBean id="db" class = "jdbc.ForDataBase"/>

<html>

<%@include file="include/head.jsp" %>

<body class="body">

<%
// בדיקה אם המשתמש אכן מנהל ומחובר 
if (session.getAttribute("login_success") != "true" || session.getAttribute("manager") != "true")
{
	session.setAttribute("error", "no-manager");
	response.sendRedirect("invalid.jsp");
}

// ספירת משתמשים
String s = "SELECT * FROM users";
String [][] users = db.select(s);
int userNum = 0;
for (int i=0; i<users.length;i++)
	userNum++;

s = "SELECT * FROM stores";
String [][] stores = db.select(s);
int storeNum = 0;
for (int i=0; i<stores.length;i++)
	storeNum++;

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
	
	<div class="div">	
	
		<article class="article">				
			<header>
				<h2 class = "colored">Manager Page</h2>
			</header>

			<div class = "div-textblock">
				<h4>Users</h4>
				<p>Number of registered users: <%= userNum %></p>
				<p><a href = "manager_users.jsp"> All users</a></p>
				<br>
				
				<h4>Stores</h4>
				<p>Number of stores: <%= storeNum %></p>
				<p><a href = "manager_stores.jsp"> All stores</a></p>
			</div>
		</article>
		
		<article class = "article">
			<div>
				<h4 class = "colored">Promote user for Manager Permissions</h4>
				<form id = "deletebox" action="jsp/manager_promote_user.jsp" method="POST">  		
  					<input id = "user_id" type="text" name = "id" class = "input-decorate width200" placeholder="Enter User ID " />
    				<input id = "submit" type="submit" class = "submit-decorate" value="Promote User" />
				</form>
			</div>
		</article>
		
		<article class = "article">
		
			<div>
				<div class = "showlike">	
					<h4 class = "colored">Stores: show all entries where</h4>
					<form class = "selectbox" name="selectLikeStores" action="manager_showlike_stores.jsp">
						<select class = "selectbox-select" name = "whatToShow" >
							<option value = "storeName">Store Name</option>
							<option value = "category">Store Category</option>
							<option value = "description">Store Description</option>
						</select>
	
					<br>
					<h5>Contains the words</h5>
						<input class = "select-input" name = "keyWord" id = "keyWord" placeholder = "Enter value">
						<input id = "select-submit" class = "submit-decorate" type="submit" value="Select">
					</form>
				</div>
				
				<div class = "showlike">
					<h4 class = "colored">Users: show all entries where</h4>
					<form class = "selectbox" name="selectLikeUsers" action="manager_showlike_users.jsp">
						<select class = "selectbox-select" name = "whatToShow">
							<option value = "username">Username</option>	
							<option value = "name">User's First and Last name</option>
							<option value= "email">User Email</option>
						</select>
	
					<br>
					<h5> Contains the words</h5>
						<input class = "select-input" name = "keyWord" id = "keyWord" placeholder = "Enter value">
						<input id = "select-submit" class = "submit-decorate" type="submit" value="Select">
					</form>
				</div>
			</div>
			
		</article>
		
		<article class = "article">
		
			<div>
				<h4 class = "colored">Delete all data from table</h4>
				<form class = "selectbox" name="deleteLike" action="jsp/manager_delete_like.jsp">
					<select class = "selectbox-select" name = "whatToDelete" >
						<option value = "stores">Stores</option>
						<option value = "users">Users</option>
					</select>

				<br>
				<h5>That has the ID Number</h5>
					<input class = "select-input" name = "deleteID" id = "deleteID" placeholder = "Enter ID value">
					<input id = "select-submit" class = "submit-decorate" type="submit" value="Select">
				</form>
			</div>
			
		</article>
	</div>
	
	<%@include file="../include/footer.jsp" %>
	
</div>

</body>
</html>