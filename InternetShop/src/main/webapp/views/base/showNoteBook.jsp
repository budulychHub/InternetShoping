<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    

<h1>NoteBook</h1>

<c:forEach var="noteBook" items="${noteBooks}">
<a href="deleteNoteBook/${noteBook.id}">delete</a>
<br>
${noteBook.brand}
<br>
<i>
${noteBook.display}
<br>
${noteBook.price}
</i>
<hr>
</c:forEach>
<hr>