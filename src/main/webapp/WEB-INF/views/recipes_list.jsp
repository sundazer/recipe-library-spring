<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="datatables" uri="http://github.com/dandelion/datatables" %>

<html>
<body>
<div class="container">
    <h2>Recipes</h2>
    
    <datatables:table id="recipes" data="${recipes}" row="recipe">
        <datatables:column title="Name" cssStyle="width: 150px;">
            <c:out value="${recipe.name}"/>
        </datatables:column>
        <datatables:column title="Description" property="description" cssStyle="width: 200px;"/>
        <datatables:column title="Instructions" property="instructions" cssStyle="width: 400px;"/>
    </datatables:table>

</div>
</body>

</html>