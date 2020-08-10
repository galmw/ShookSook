<%@ page language="java" contentType="text/html; charset=windows-1255"
    pageEncoding="windows-1255"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<jsp:useBean id="db" class = "jdbc.ForDataBase"/>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1255">
<title>Insert</title>
</head>
<body>


<%
if (session.getAttribute("login_success") != "true" || session.getAttribute("manager") != "true")
{	
	session.setAttribute("error", "no-manager");
	response.sendRedirect("invalid.jsp");
}	
else
{
	String whatToDelete = request.getParameter("whatToDelete");
	String sqlStr = "";
	String deleteID = request.getParameter("deleteID");
	int id = Integer.parseInt(deleteID);
	System.out.println(whatToDelete);
	System.out.println(deleteID);
	sqlStr = "delete from " + whatToDelete + " where id = "+ id +";";
	System.out.print(sqlStr);
	db.insertUpdateDelete(sqlStr);
	session.setAttribute("deletelike_success", "true");

	response.sendRedirect("../manager.jsp");

}
%>

</body>
</html>