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
		
		String old_storeName = ((String [])session.getAttribute("edit"))[2];
		String id = ((String [])session.getAttribute("edit"))[0];
		
		String s = "SELECT * FROM stores WHERE (name ='" + name + "')";
		String [][] rs = db.select(s);
		
		if(rs.length > 0 && !name.equals(old_storeName))
		{
			session.setAttribute("store_edit_action_failed", "true");
			response.sendRedirect(referer);
		}
		else
		{
   	 		String updateSqlStr = "UPDATE stores SET name = '"+name+"', category = '"+category+"', address = '"+address+"', description = '"+description+ "', img_url = '"+img_url+"' WHERE id = " + id + ";";
			db.insertUpdateDelete(updateSqlStr);
			session.setAttribute("store_edit_action_success", "true");
			response.sendRedirect("../store_page.jsp?storeId=" + id);
		}
	}

%>

</body>
</html>