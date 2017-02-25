<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    
    <link rel="stylesheet" href="css/login/registration.css">


<div class="container">
  <h2>Sing Up</h2>
  
  <form:form action="loginprocesing" method="post">
    <div class="group">      
     <input name="username" type="text" required/>
      <label>Name</label>
    </div>

    <div class="group">      
      <input name="password" type="password" required/>
      <label>Password</label>
    </div>
    
    <button>Click</button>
    <a href="registration">Not registered yet?</a>
  </form:form>
</div>