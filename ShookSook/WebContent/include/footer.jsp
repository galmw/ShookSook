<%@ page contentType="text/html; charset=utf-8" %>

<!DOCTYPE html>

<html>

<body class="body">

<footer class="mainFooter">
	<p> © Gal Wiernik 2014 <a href="mailto:galwiernik@gmail.com">Contact Me at galwiernik@gmail.com</a></p>
</footer>

<%
if ((String)session.getAttribute("login_failed") == "true")
{
	session.setAttribute("login_failed", "false");
	%>
	<script type="text/javascript">alert("Incorrect username or password!");</script>
	<%
}

if ((String)session.getAttribute("signup_failed") == "true")
{
	session.setAttribute("signup_failed", "false");
	%>
	<script type="text/javascript">alert("The username you've picked is taken, please choose a different one");</script>
	<%
}

if ((String)session.getAttribute("update_failed") == "true")
{
	session.setAttribute("update_failed", "false");
	%>
	<script type="text/javascript">alert("The username you've picked is taken, please choose a different one");</script>
	<%
}

if ((String)session.getAttribute("update_success") == "true")
{
	session.setAttribute("update_success", "false");
	%>
	<script type="text/javascript">alert("You've successfully updated your information!");</script>
	<%
}

if ((String)session.getAttribute("signup_success") == "true")
{
	session.setAttribute("signup_success", "false");
	%>
	<script type="text/javascript">alert("You've signed up successfully!");</script>
	<%
}

if ((String)session.getAttribute("store_add_failed") == "true")
{
	session.setAttribute("store_add_failed", "false");
	%>
	<script type="text/javascript">alert("There already is a store with this name!");</script>
	<%
}

if ((String)session.getAttribute("store_edit_action_failed") == "true")
{
	session.setAttribute("store_edit_action_failed", "false");
	%>
	<script type="text/javascript">alert("There already is a store with this name!");</script>
	<%
}

if ((String)session.getAttribute("store_delete_success") == "true")
{
	session.setAttribute("store_delete_success", "false");
	%>
	<script type="text/javascript">alert("Store successfully deleted!");</script>
	<%
}

if ((String)session.getAttribute("store_edit_action_success") == "true")
{
	session.setAttribute("store_edit_action_success", "false");
	%>
	<script type="text/javascript">alert("Store successfully edited!");</script>
	<%
}

if ((String)session.getAttribute("manager_delete_user_success") == "true")
{
	session.setAttribute("manager_delete_user_success", "false");
	%>
	<script type="text/javascript">alert("User successfully deleted!");</script>
	<%
}

if ((String)session.getAttribute("promote_success") == "true")
{
	session.setAttribute("promote_success", "false");
	%>
	<script type="text/javascript">alert("User successfully promoted for manager access!");</script>
	<%
}

if ((String)session.getAttribute("promote_failed") == "true")
{
	session.setAttribute("promote_failed", "false");
	%>
	<script type="text/javascript">alert("Promotion failed; Input ID out of index");</script>
	<%
}

if ((String)session.getAttribute("deletelike_success") == "true")
{
	session.setAttribute("deletelike_success", "false");
	%>
	<script type="text/javascript">alert("Delete successful!");</script>
	<%
}
%>


</body>
</html>