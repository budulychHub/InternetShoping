<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<link rel="stylesheet" href="css/add/add.css">

<div class="container">
	<h2>
		Add Provider<br>
		${exception}
	</h2>

	<form:form modelAttribute="provider" action="addProvider" method="post">
		<div class="group">
			<form:input path="name" required="required"/>
			<label>Name</label>
		</div>

		<div class="group">
			<form:input path="email" type="email" required="required"/>
			<label>Email</label>
		</div>

		<div class="group">
			<form:input path="phone" required="required"/>
			<label>Phone</label>
		</div>

		<button class="action-button shadow animate green">Click</button>
	</form:form>
</div>