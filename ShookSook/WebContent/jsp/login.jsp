<%@ page contentType="text/html; charset=utf-8" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<jsp:useBean id="db" class = "jdbc.ForDataBase"></jsp:useBean>

<html>

<body>

<%  
		if(request.getMethod().equals("POST"))
		{
			String referer = request.getHeader("Referer");			
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			
			String sqlUser = "SELECT * FROM users WHERE (username ='" + username + "' AND password ='" + password + "');";
			String sqlManager = "SELECT manager FROM users WHERE (username ='" + username + "' AND password ='" + password + "');";
			
			String [][] rs = db.select(sqlUser);
			String [][] rs2 = db.select(sqlManager);
			if (rs.length > 0)
			{		
				session.setAttribute("login_success", "true");
				session.setAttribute("user", rs[0]);
				session.setAttribute("username", rs[0][1]);
				session.setMaxInactiveInterval(3600);
				
				if (application.getAttribute("visitorNum") == null)
		        	 application.setAttribute("vsitorNum", 0);
				application.setAttribute("visitorNum", ((Integer)application.getAttribute("visitorNum"))+1);
				
				if (Integer.parseInt(rs2[0][0]) == 1)
				{
					session.setAttribute("manager", "true");
				}
			}
			else
			{
				session.setAttribute("login_failed", "true");
			}
			response.sendRedirect(referer);		
		}
%>	
	
</body>
</html>