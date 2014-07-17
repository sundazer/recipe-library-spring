<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html>
<body>
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

<a href="${pageContext.request.contextPath}">Back to main</a>
</body>

</html>