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
		String id = request.getParameter("id");
		
		String s = "SELECT * FROM users WHERE (id ='" + id + "')";
		String [][] rs = db.select(s);
		
		if(rs.length == 0)
		{
			session.setAttribute("promote_failed", "true");
		}
		else
		{
   	 		String updateSqlStr = "UPDATE users SET manager = 1 WHERE id = " +id + ";";
			db.insertUpdateDelete(updateSqlStr);
			
			session.setAttribute("promote_success", "true");
		}
		response.sendRedirect(referer);
	}

%>

</body>
</html>