<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<link rel="stylesheet" href="css/shop/backpack.css">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h1>Mobile Phone</h1>

<c:forEach var="mobilePhone" items="${mobilePhones}">
	<figure class="snip1518 hover">
		<div class="image">
			<img
				src="https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRUSG_N0fbJ1up3b17qPSSnTafBVtMPPbB2urKxr_M0cgH6x1aG4Q"
				alt="sample99" />
		</div>
		<figcaption>
			<h5>Mobile Phone</h5>
			<h3>${mobilePhone.brand}</h3>
		</figcaption>
		<footer>
			<div class="date">${mobilePhone.price}</div>
				<button>add basket</button>
		</footer>
	</figure>
</c:forEach>