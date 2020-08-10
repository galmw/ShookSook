<%@ page contentType="text/html; charset=utf-8" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<jsp:useBean id="db" class = "jdbc.ForDataBase"/>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1255">
<title>Insert title here</title>
</head>
<body>

<%  
		
	if(request.getMethod().equals("POST"))
	{
		String referer = request.getHeader("Referer");			
		String [] user = (String [])session.getAttribute("user");
		
		String username		= request.getParameter("username");
		String password   	= request.getParameter("password");
		String email		= request.getParameter("email");
		String first_name	= request.getParameter("first_name");
		String last_name	= request.getParameter("last_name");
		String sex 			= request.getParameter("sex");
		String birth		= request.getParameter("birth"); 
		
		String old_username = (String)session.getAttribute("username");
		
		String s = "SELECT * FROM users WHERE (username ='" + username + "')";
		String [][] rs = db.select(s);
		
		if(rs.length > 0 && !username.equals(old_username))
		{
			session.setAttribute("update_failed", "true");
		}
		else
		{
   	 		String updateSqlStr = "UPDATE users SET username = '"+username+"', password = '"+password+"', email = '"+email+"', password = '"+password+ "', first_name = '"+first_name+"', last_name = '" +last_name+"', sex = '"+sex+"', birth = '" +birth +"' WHERE id = " +user[0] + ";";
			db.insertUpdateDelete(updateSqlStr);
		
       		String getSqlStr = "select * from users where (username = '" + username + "' and password = '" + password + "');";
			user = db.select(getSqlStr)[0]; 
			session.setAttribute("user", user);	
			session.setAttribute("username", username);
			
			session.setAttribute("update_success", "true");
		}
		response.sendRedirect(referer);
	}

%>

</body>
</html>