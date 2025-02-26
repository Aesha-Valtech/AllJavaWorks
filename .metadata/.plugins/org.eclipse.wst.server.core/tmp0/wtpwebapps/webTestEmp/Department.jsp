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

Counters = ${counters}
Current Department = ${current}

<br>
<br>

<h1>Department Data</h1>

<form action="depts" method="post">
<table border="">
<tr>

<td>Id</td>
<td>${dept.id}</td>
</tr>

<tr>

<td>Name</td>
<td>${dept.name}</td>
</tr>

<tr>

<td>Location</td>
<td>${dept.location}</td>
</tr>

<tr>

<td colspan="2">

		<input type="submit" name="operation" value="First"/>
		
		<input type="submit" name="operation" value="Previous"/>
	
		<input type="submit" name="operation" value="Last"/>
	
		<input type="submit" name="operation" value="Next"/>
	
</td>

</tr>


</table>
</form>


<br>
<br>


<table border="">
	<tr>
		<th>ID <a href="depts?operation=sorting&filed=name&sortby=asc">asc</a>&nbsp;
		<a href="depts?operation=sorting&filed=name&sortby=dsc">dsc</a> 
		</th>
		
		<th>Name <a href="depts?operation=sorting&filed=name&sortby=asc" >asc</a>&nbsp; 
		<a href="depts?operation=sorting&filed=name&sortby=dsc">dsc</a></th>
		
		<th>Age <a href="depts?operation=sorting&filed=name&sortby=asc" >asc</a>&nbsp; 
		<a href="depts?operation=sorting&filed=name&sortby=dsc">dsc</a></th>
		
		<th>Gender <a href="depts?operation=sorting&filed=name&sortby=asc" >asc</a>&nbsp; 
		<a href="depts?operation=sorting&filed=name&sortby=dsc">dsc</a></th>
		
		<th>Salary<a href="depts?operation=sorting&filed=name&sortby=asc" >asc</a>&nbsp; 
		<a href="depts?operation=sorting&filed=name&sortby=dsc">dsc</a></th>
		
		<th>Experiance <a href="depts?operation=sorting&filed=name&sortby=asc" >asc</a>&nbsp; 
		<a href="depts?operation=sorting&filed=name&sortby=dsc">dsc</a></th> 
		
		<th>Level <a href="depts?operation=sorting&filed=name&sortby=asc" >asc</a>&nbsp; 
		<a href="depts?operation=sorting&filed=name&sortby=dsc">dsc</a></th>
		
		<th>DId <a href="depts?operation=sorting&filed=name&sortby=asc" >asc</a>&nbsp; 
		<a href="depts?operation=sorting&filed=name&sortby=dsc">dsc</a></th>
		
	</tr>
	
<c:forEach items = "${emps}" var="e" >
		<tr>
			<td><c:out value="${e.id}"> </c:out> </td>
			<td> ${e.name} </td>
			<td> ${e.age} </td>
			<td> ${e.gender} </td>
			<td>${e.salary}</td>
			<td> ${e.exp} </td>
			<td> ${e.level} </td>
			<td>${e.dept_id}</td> 
		</tr>
</c:forEach>


</table>


<!-- <h1>Serach The Employee</h1>
 -->



<!-- <input type="search" name="searchnm" />
<input type="search" name="searchage" />
<input type="search" name="searchsal" /> -->


</body>
</html>