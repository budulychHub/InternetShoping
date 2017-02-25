<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<link rel="stylesheet" href="css/header.css">


<sec:authorize access="isAuthenticated()">

	<p><sec:authentication property="name"/>.User: ${user.name}</p>

	<form:form action="logout" method="post">
		<button>logout</button>
	</form:form>
	

	<form:form action="profile" method="get">
		<button>profile</button>
	</form:form>
	
</sec:authorize>

<sec:authorize access="hasRole('ROLE_ADMIN')">
	
	<form:form action="base" method="get">
		<button>admin</button>
	</form:form>
	
</sec:authorize>
<br>

<nav id="nav-1">
        <a class="link-1" href="index">Home</a> 
        <a class="link-1" href="shop">Shop</a>
        <a class="link-1" href="aboutus">About us</a>
	<sec:authorize access="!isAuthenticated()"> 
		<a class="link-1" href="loginpage">Login</a>
	</sec:authorize>
	<%-- <sec:authorize access="hasRole('ROLE_USER')"> --%>	
		<a href="basket"><span><i class="shopping-cart"></i></span></a>
	<%-- </sec:authorize> --%>
</nav>