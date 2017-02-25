<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<link rel="stylesheet" href="css/login/profile.css">



<h1>PROFILE</h1>

<figure class="snip0057 red">
			<p>User: ${user.name}</p>
	<p>${user.email}</p>
</figure>

<br>
<img src="${user.pathImage}" alt="foto" width="150px" height="150px">
<br>

<form:form action="updateProfile" method="get">
	<button>update profile</button>
</form:form>

<h3>Commodity</h3>

<c:forEach var="noteBook" items="${user.noteBooks}">
		<h3>${noteBook.brand}</h3>
${noteBook.display}     ${noteBook.price}
<hr>
</c:forEach>


