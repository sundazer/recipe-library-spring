<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html>
<body>
<div class="container">

<jsp:include page="../fragments/header.jsp" />

    <h2>Recipes</h2>
    <table class="table table-striped table-bordered table-condensed">
    <c:forEach var="recipe" items="${recipes}">
    	<tr>
    		<td>
				<spring:url value="/recipes/{recipeId}.html" var="recipeURL">
                	<spring:param name="recipeId" value="${recipe.id}"/>
	            </spring:url>
    			<a href="${recipeURL}"><c:out value="${recipe.name}" /></a>
    		</td>
    		<td><c:out value="${recipe.description}" /></td>
    		<td>
    		<c:out value="${fn:length(recipe.instructions) > 140 ? fn:substring(recipe.instructions, 0, 140) : recipe.instructions }" />
    		<c:if test="${fn:length(recipe.instructions) > 140 }">
    			<td><c:out value="${fn:substring(recipe.instructions, 0, 140)} ..." /></td>
    		</c:if></td>
    	</tr>
    </c:forEach>
	</table>
<jsp:include page="../fragments/footer.jsp" />

</div>

</body>

</html>