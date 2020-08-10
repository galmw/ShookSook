<%@ page contentType="text/html; charset=utf-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>

<html>

<body class="body">

<div class = "head-box">

	<a href = "index.jsp"><img src = "images/logo1_white.png" class = "logo"></a>
	
	<%
	String name = (String)session.getAttribute("username");
	String [] user = (String [])session.getAttribute("user");
	
	if (name == null)
		name = "Guest";
	if (application.getAttribute("visitorNum") == null)
		application.setAttribute("visitorNum" , 0);
	if (application.getAttribute("registeredNum") == null)
		application.setAttribute("registeredNum" , 0);
	%>

	<div class = "buttonwrap">
	
		<div class= "buttonbox" id = "welcome">
			<ul class = "login">
				<li><div id="clockbox">Time</div><span>Hello <%= name %> <br>You are visitor #<%=application.getAttribute("visitorNum") %></span></li>		
				
			</ul>
		</div>

		<div class= "buttonbox" id = "options">
			<ul class = "login">

			<%
			if ((String)session.getAttribute("login_success") != "true")
			{
				%>
				<li><span class="button" id="toggle-login" onclick="toggle_login()">Login</span></li>
				<li><span class="button" id="toggle-signup" onclick="toggle_signup()">Sign Up</span></li>
				<%
			}
			else
			{
			%>
				<li><a href="jsp/logout.jsp" ><span class="button" id="toggle-logout">Logout</span></a></li>
				<li><span class="button" id="toggle-edit" onclick="toggle_edit()">Edit User</span></li>
			<%
			}
			if (session.getAttribute("manager") == "true")
			{
				%>
				<li><a href="manager.jsp" ><span class="button" id="toggle-manager">Manager</span></a></li>
				<%
			}
			%>
			
			</ul>
		</div>
	
	</div>
	
</div>


<%--תיבות ההרשמה--%>

<div id="login_box" class ="formbox">
	<div id="triangle"></div>
	<h1>Login</h1>
	<form class = "dropdown-form" action = "jsp/login.jsp" method="POST">
		<input class = "input-decorate userform" type="text" name = "username" placeholder="Username" />
  		<input class = "input-decorate userform" type="password"  name = "password" placeholder="Password" />
  		<input class = "submit-decorate" type="submit" value="Log in" />
	</form>
</div>


<div id="signup_box"  class ="formbox">
	<div id="triangle"></div>
	<h1>Sign Up</h1>
	<form class = "dropdown-form" action="jsp/signup.jsp" method="POST" onsubmit="return valid(this)" >  		
		<input class = "input-decorate userform" type="text" name = "username" placeholder="Username" />
		<input class = "input-decorate userform" type="text" name="first_name" placeholder="First Name" />
 		<input class = "input-decorate userform" type="text" name="last_name" placeholder="Last Name" />	
		<input class = "input-decorate userform" type="password" name="password" placeholder="Password" />
 		<input class = "input-decorate userform" type="password" name="passwordConfirm" placeholder="Repeat Password" />
 		
 		<div class = "radio">
 			<div>Sex:</div>
			<input type="radio" name="sex" id = "male" value="male" required>
 			<label class = "radio-label" for="male">Male</label>
			<input type="radio" name="sex" id = "female" value="female" required>
 			<label class = "radio-label" for="female">Female</label>
			<input type = "radio" name="sex" id = "other" value="other" checked required>
			<label for="other">Other</label>
		</div>
		
		<div>Birth date</div>
		<input type ="date" class = "input-decorate userform" name = "birth" id = "birth" value = "2014-01-01" required min = "1900-01-01" max = "2014-01-01">
    	<input class = "input-decorate userform" type="email" name="email" placeholder="Email" />
    	<input class = "submit-decorate" type="submit" value="Sign Up" />
	</form>
</div>

	
<%
if (session.getAttribute("login_success") == "true")
{
%>

<div id="edit_box"  class ="formbox">
	<div id="triangle"></div>
	<h1>Edit User</h1>
	<form class = "dropdown-form" action="jsp/edit_user.jsp" method="POST" onsubmit="return valid(this)" >  		
		<input class = "input-decorate userform" type="text" name = "username" placeholder="Username" value= <%= user[1] %> />
		<input class = "input-decorate userform" type="text" name="first_name" placeholder="First Name" value= <%= user[4] %> />
 		<input class = "input-decorate userform" type="text" name="last_name" placeholder="Last Name" value= <%= user[5] %> />	
		<input class = "input-decorate userform" type="password" name="password" placeholder="Password" value= <%= user[2] %> />
 		<input class = "input-decorate userform" type="password" name="passwordConfirm" placeholder="Repeat Password" />
 	
 		<div class = "radio">
 		<%
 		if(user[6].equals("male"))
 		{
 		%>
			<input type="radio" name="sex" id = "male" value="male" checked required>
 			<label class = "radio-label" for="male">Male</label>
			<input type="radio" name="sex" id = "female" value="female" required>
 			<label class = "radio-label" for="female">Female</label>
			<input type = "radio" name="sex" id = "other" value="other" required>
			<label for="other">Other</label>
		<% 
 		}
 		else if(user[6].equals("female"))
 		{
		%>
			<input type="radio" name="sex" id = "male" value="male"  required>
 			<label class = "radio-label" for="male">Male</label>
			<input type="radio" name="sex" id = "female" value="female" checked required>
 			<label class = "radio-label" for="female">Female</label>
			<input type = "radio" name="sex" id = "other" value="other" required>
			<label for="other">Other</label>
		<%
 		}
 		else if(user[6].equals("other"))
 		{
 		%>
			<input type="radio" name="sex" id = "male" value="male"  required>
 			<label class = "radio-label" for="male">Male</label>
			<input type="radio" name="sex" id = "female" value="female" checked required>
 			<label class = "radio-label" for="female">Female</label>
			<input type = "radio" name="sex" id = "other" value="other" required>
			<label for="other">Other</label>
		<%
 		}
		%>
		</div>
		
		<div>Birth date</div>
		<input type ="date" class = "input-decorate userform" name = "birth" id = "birth" value = <%= user[7] %> required min = "1900-01-01" max = "2014-01-01">
    	<input class = "input-decorate userform" type="email" name="email" placeholder="Email" value= <%= user[3] %> >
    	<input class = "submit-decorate" type="submit" value="Submit Changes" />
	</form>
</div>

<%
}
%>
	
	
	
<script>

//אפקטים של הופעה והעלמות תיבות ההרשמה
var loginDiv = document.getElementById('login_box');
loginDiv.style.display = 'none';

var signupDiv = document.getElementById('signup_box');
signupDiv.style.display = 'none';

var editDiv = document.getElementById('edit_box');
editDiv.style.display = 'none';

</script>


</body>
</html>