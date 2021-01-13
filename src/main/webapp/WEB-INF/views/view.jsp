<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.project2.model.Feedback"%>
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

		<tr style="text-align: center">
			<td>${product.getId()}</td>
			<td>${product.getName()}</td>
		</tr>
	</table>

	<form method="post" action="/view/${product.getId()}">


		<h2>Add a review</h2> <br>
		<textarea rows="10" cols="80" name ="review"></textarea><br>
		<input type="submit"  value=" Add Review">


	</form>
	<br>
	<br>
	<br>
	<hr>

	<table border='1' style="width: 40%">
		<tr>

			<th>Reviews</th>
		</tr>
		<%
			List<Feedback> fs = (List<Feedback>) session.getAttribute("fs");
		%>
		<%-- <%=fs %> --%>
		<%
		/* if (fs == null)
			return; */
		for (Feedback f : fs) {
		%>

		<tr style="text-align: center">

			<td><%= f.getReview()%></td>
		</tr>
		<%
			}
		%>

	</table>


</body>
</html>


