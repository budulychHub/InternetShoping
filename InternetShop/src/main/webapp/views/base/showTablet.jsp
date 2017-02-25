<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h1>Tablet</h1>

<c:forEach var="tablet" items="${tablets}">
<a href="deleteTablet/${tablet.id}">delete</a>
<br>
${tablet.brand}
<br>
${tablet.display}
<br>
${tablet.price}
<hr>
</c:forEach>