<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<h1>TV</h1>

<c:forEach var="tv" items="${tvs}">
	<a href="deleteTv/${tv.id}">delete</a>
	<br>
	
	<form:form action="saveImgBag/${tv.id}?${_csrf.parameterName}=${_csrf.token}"
		method="get" enctype="multipart/form-data">
		<input type="file" name="image">
		<button>save image</button>
	</form:form>
	
	<br>
${tv.brand}
<br>
${tv.display}
<br>
${tv.price}
<hr>
</c:forEach>