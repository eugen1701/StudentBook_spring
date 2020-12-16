<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h2>Add a Student</h2>
	<form:form action="saveStudent" modelAttribute="student" method="POST">
		<label>First Name</label>
		<form:input type="text" path="firstName" />
		<label>Last Name</label>
		<form:input type="text" path="lastName" />
		<label>Email</label>
		<form:input type="text" path="email" />
		<input type="submit" value="save">
	</form:form>
	<a href="${pageContext.request.contextPath }/student/list">Back to
		list</a>
</body>
</html>