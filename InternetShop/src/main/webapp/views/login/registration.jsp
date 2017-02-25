<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<link rel="stylesheet" href="css/login/registration.css">

<div class="container">

	<h2>
		Sing Up<br>
			${exception}
	</h2>

	<form:form modelAttribute="user" action="registration" method="post">
		<div class="group">
			<form:input path="name" placeholder="User Name"/>
			<label>Name</label>
		</div>

		<div class="group">
			<form:input path="email" type="email" placeholder="email"/>
			<label>Email</label>
		</div>

		<div class="group">
			<form:input path="password" type="password" placeholder="Password"/>
			<label>Password</label>
		</div>

		<button>Click</button>
	</form:form>
</div>


