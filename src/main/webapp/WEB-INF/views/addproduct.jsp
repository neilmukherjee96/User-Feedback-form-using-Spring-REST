<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add a New Product</title>
</head>
<body>
	<h1>Welcome, Please add a product to product list</h1>
	<form method="post" action="products">
		Product Name: <input type="text" name="name" required="required" /> 
		<input type="submit" value="Add Product" />
	</form>
</body>
</html>