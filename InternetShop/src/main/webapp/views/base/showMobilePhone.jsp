<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<h1>Mobile Phone</h1>

<c:forEach var="mobilePhone" items="${mobilePhones}">
<a href="deleteMobilePhone/${mobilePhone.id}">delete</a>
<br>
${mobilePhone.brand}
<br>
${mobilePhone.display}
<br>
${mobilePhone.price}
<hr>
</c:forEach>