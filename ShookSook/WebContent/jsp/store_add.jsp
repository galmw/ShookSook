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

		String name		= request.getParameter("name");
		String category   	= request.getParameter("category");
		String address		= request.getParameter("address");
		String description	= request.getParameter("description");
		String img_url	= request.getParameter("img_url");
		
		String creator = ((String[])session.getAttribute("user"))[4] + " " + ((String[])session.getAttribute("user"))[5];
		
		String s = "SELECT * FROM stores WHERE (name ='" + name + "');";
		String [][] rs = db.select(s);
		
		if (rs.length == 0)
		{
			String sqlStr = "INSERT INTO stores values(" + null+", '"+creator+"','"+name+"','"+category+"','"+address+"','"+description+"', '"+img_url+"');";
			db.insertUpdateDelete(sqlStr);					
			session.setAttribute("store_add_success", "true");
			response.sendRedirect("../stores.jsp");
		}
		else
		{
			session.setAttribute("store_add_failed", "true");
			response.sendRedirect(referer);
		}
	}

%>

</body>
</html>