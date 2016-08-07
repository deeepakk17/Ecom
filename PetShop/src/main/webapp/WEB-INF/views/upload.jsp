<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Upload File Request Page</title>
</head>
<body>
<form method="POST" action="uploadFile" enctype="multipart/form-data">
		<table>
		<tr>
		<td>Select File</td>
		<td><input type="file" name="file"></td>
		</tr>
		<tr>
		<td>File Name:</td>
		<td><input type="text" name="name"><br></td>
		</tr>
		<tr>
		<td><input type="submit" value="Upload"></td>
		</tr>
		</table>
		 
		 
	</form>	
</body>
</html>