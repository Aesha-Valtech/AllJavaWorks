<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="jakarta.tags.core" %>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>





<form action="employees" method="post" >

<table>

<tr>
	<td>Id</td>
	<td><input type="text" name="id" value="${emps.id}"/></td>
</tr>

<tr>
	<td>Name</td>
	<td><input type="text" name="name" value="${emps.name}" /></td>
</tr>

<tr>
	<td>Age</td>
	<td><input type="text" name="age" value="${emps.age}" /></td>
</tr>

<tr>
	<td>Gender</td>
	<td><input type="text" name="gender" value="${emps.gender}" /></td>
</tr>

<tr>
	<td>Salary</td>
	<td><input type="text" name="salary" value="${emps.salary}" /></td>
</tr>

<tr>
	<td>Experiance</td>
	<td><input type="text" name="experiance" value="${emps.exp}" /></td>
</tr>

<tr>
	<td>Level</td>
	<td><input type="text" name="level" value="${emps.level}" /></td>
</tr>

<tr>
	<td>Dept_ID</td>
	<td><input type="text" name="dept_id" value="${emps.dept_id}" /></td>
</tr>


<tr>
	<td colspan="2">
		
		<input type="submit" name="operation" value="${mode}" />
		<input type="submit" name="operation" value="cancel" />
		
	</td>
</tr>

</table>
</form>
</body>
</html>