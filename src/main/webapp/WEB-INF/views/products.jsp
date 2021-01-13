<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.project2.model.Product"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h3>Products Page</h3>
	<table border='1' style="width: 40%">
		<tr>
			<th>Id</th>
			<th>Product Name</th>
		</tr>
		<%
			ArrayList<Product> products = (ArrayList<Product>) session.getAttribute("products");
		for (Product p : products) {
		%>


		<tr style="text-align: center">
			<td><%=p.getId()%></td>
			<td><a href="/view/<%=p.getId()%>"><%=p.getName()%> </a></td>
		</tr>
		<%
			}
		%>
	</table>


</body>
</html>