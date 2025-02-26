<%@page import="org.apache.jasper.tagplugins.jstl.core.Import"%>
<%@page import="dao.Employee"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="jakarta.tags.core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1 align="Center">Employee Table</h1>


	<table border="2" align="center">
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>Age</th>
			<th>Gender</th>
			<th>Salary</th>
			<th>Experiance</th>
			<th>Level</th>
			<th>Actions</th>
		</tr>

		<c:forEach items="${emps}" var="e">
			<tr>
				<td><c:out value="${e.id}">
					</c:out></td>
				<td>${e.name}</td>
				<td>${e.age}</td>
				<td>${e.gender}</td>
				<td>${e.salary}</td>
				<td>${e.exp}</td>
				<td>${e.level}</td>
				<td><a href="employees?operation=Update&id=${e.id}">Update</a>
					<a href="employees?operation=Delete&id=${e.id}">Delete</a></td>



			</tr>
		</c:forEach>


		<tr>
			<td><a href="employees?operation=newEmp">New Employee</a></td>

		</tr>


	</table>


	<h1>Search Employee</h1>

	<form action="employees" method="get">

		<select name="selectcol" id="selectcol">

			<option value="name">Emp name</option>
			<option value="age">Emp Age</option>
			<option value="salary">Emp Salary</option>

		</select> 
		<input type="text" id="srchqury" name="srchqury" /> 
		<input type="submit" value="Search" />

	</form>








	<!-- Display Employee search Data -->

	<%-- <c:if test="${not empty emplst}">
<table border="">
	<tr>
		<th>ID</th>
		<th>Name</th>
		<th>Age</th>
		<th>Gender</th>
		<th>Salary</th>
		<th>Experiance</th> 
		<th>Level</th>
		<th>Department ID</th>
	</tr>


<c:forEach items="${emplst}" var="emp" >

	<tr>
		<td>${emp.id}</td>
		<td>${emp.name}</td>
		<td> ${emp.age} </td>
		<td> ${emp.gender} </td>
		<td>${emp.salary}</td>
		<td> ${emp.exp} </td>
		<td> ${emp.level} </td>
		<td>${emp.dept_id}</td> 

	</tr>
	
</c:forEach>
</table>
</c:if>
 --%>

</body>
</html>