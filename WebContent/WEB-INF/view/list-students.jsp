<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<H2>List Of Students</H2>
	<table border="1">
		<tr>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Email</th>
			<th>Action</th>
		</tr>
		<c:forEach var="TempStudent" items="${students }">
			<tr>
				<td>${TempStudent.firstName }</td>
				<td>${TempStudent.lastName }</td>
				<td>${TempStudent.email }</td>
			</tr>
		</c:forEach>
	</table>
	<H2>List Of Students</H2>
	<form action="showAddForm" method="get">
		<input type="submit" value="Add Student" />
	</form>
	<table border="1">
		<c:forEach var="TempStudent" items="${students }">
			<c:url var="updateLink" value="/student/showEditForm">
				<c:param name="studentId" value="${TempStudent.id }" />
			</c:url>
			<tr>
				<td>${TempStudent.firstName }</td>
				<td>${TempStudent.lastName }</td>
				<td>${TempStudent.email }</td>
				<td><a href="${updateLink }">Edit</a></td>
			</tr>
		</c:forEach>
		<c:forEach var="TempStudent" items="${students }">
			<c:url var="updateLink" value="/student/showEditForm">
				<c:param name="studentId" value="${TempStudent.id }" />
			</c:url>
			<c:url var="deleteLink" value="/student/deleteStudent">
				<c:param name="studentId" value="${TempStudent.id }" />
			</c:url>
			<tr>
				<td>${TempStudent.firstName }</td>
				<td>${TempStudent.lastName }</td>
				<td>${TempStudent.email }</td>
				<td><a href="${updateLink }">Edit</a> | <a
					href="${deleteLink }">Delete</a></td>
			</tr>
		</c:forEach>
		</table>
</body>
</html>