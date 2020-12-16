<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h2>Edit a Student</h2>
	<form:form action="saveEditForm" modelAttribute="student" method="POST">
		<label>ID</label>
		<form:input type="text" path="id" />
		<label>First Name</label>
		<form:input type="text" path="firstName" />
		<label>Last Name</label>
		<form:input type="text" path="lastName" />
		<label>Email</label>
		<form:input type="text" path="email" />
		<input type="submit" value="save">
	</form:form>
	<a href="$
{pageContext.request.contextPath }/student/list">Back
		to list</a>
</body>
</html>