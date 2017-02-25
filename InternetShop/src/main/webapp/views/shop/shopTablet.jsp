<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<link rel="stylesheet" href="css/shop/backpack.css">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h1>Tablet</h1>


<c:forEach var="tablet" items="${tablets}">
	<figure class="snip1518">
		<div class="image">
			<img
                    src="https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcTFzSF7pyWiHeEmHkNiTQL2dPlDMxTDKqxROGio6O3NMCxnS4Zq4Q"
                    alt="sample99" />
		</div>
		<figcaption>
			<h5>Tablet</h5>
			<h3>${tablet.brand}</h3>
			<footer>
				<div class="date">${tablet.price}</div>
					<button>add basket</button>
			</footer>
		</figcaption>
	</figure>
</c:forEach>