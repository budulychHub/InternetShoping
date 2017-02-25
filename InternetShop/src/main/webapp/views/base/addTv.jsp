<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<link rel="stylesheet" href="css/add/add.css">

<div class="container">
	<h2>
		Add TV<br>
		${exception}
	</h2>

	<form:form modelAttribute="tvs" action="addTv" method="post">
		<div class="group">
			<form:input path="brand" required="required"/>
			<label>Brand</label>
		</div>

		<div class="group">
			<form:input path="display" required="required"/>
			<label>Display</label>
		</div>

		<div class="group">
			<form:input path="price" required="required"/>
			<label>Price</label>
		</div>

		<div id="mainselection">
			<form:select path="providers" items="${providers}" itemLabel="name"
				itemValue="id">
			</form:select>
		</div>

		<button class="action-button shadow animate green">Click</button>
	</form:form>
</div>