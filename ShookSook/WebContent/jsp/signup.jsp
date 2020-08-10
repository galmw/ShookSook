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

		String username		= request.getParameter("username");
		String password   	= request.getParameter("password");
		String email		= request.getParameter("email");
		String first_name	= request.getParameter("first_name");
		String last_name	= request.getParameter("last_name");
		String sex 			= request.getParameter("sex");
		String birth		= request.getParameter("birth"); 
		
		String s = "SELECT * FROM users WHERE (username ='" + username + "')";
		String [][] rs = db.select(s);
		
		if (rs.length == 0)
		{
			String sqlStr = "insert into users values(" + null+", '"+username+"','"+password+"','"+email+"','"+first_name+"','"+last_name+"','" +sex+ "','" + birth + "', 0);";
			db.insertUpdateDelete(sqlStr);
			
	        String getSqlStr = "select * from users where (username = '" + username + "' and password = '" + password + "');";
			String [] user = db.select(getSqlStr)[0]; 
			
			session.setAttribute("signup_success", "true");
			session.setAttribute("login_success", "true");
			session.setAttribute("user", user);
			session.setAttribute("username", username);
			
	        if (application.getAttribute("visitorNum") == null)
	        	application.setAttribute("visitorNum", 0);
	  		application.setAttribute("registeredNum", (Integer)(application.getAttribute("registeredNum"))+1);
	  		application.setAttribute("visitorNum", (Integer)(application.getAttribute("visitorNum"))+1);
	  		System.out.println((Integer)(application.getAttribute("registeredNum")));
		}
		else
		{
			session.setAttribute("signup_failed", "true");
		}
		response.sendRedirect(referer);
	}

%>

</body>
</html>