<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html>
<body>
<jsp:include page="../fragments/header.jsp" />
<div class="container">
    <h2>Recipes</h2>
    <table>
    <c:forEach var="recipe" items="${recipes}">
    	<tr>
    		<td><c:out value="${recipe.name}" /></td>
    		<td><c:out value="${recipe.description}" /></td>
    		<td><c:out value="${recipe.instructions}" /></td>
    	</tr>
    </c:forEach>
	</table>
</div>

<jsp:include page="../fragments/footer.jsp" />

</body>

</html>