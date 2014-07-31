<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html>
<body>
<div class="container">

<jsp:include page="../fragments/header.jsp" />

    <h2><c:out value="${recipe.name}" /></h2>
    
    <p><b><c:out value="${recipe.description}" /></b></p>
    
	<c:set var="newline" value="<%= \"\n\" %>" />
	<c:set var="text" value="${recipe.instructions }" />
    <p><c:out value="${fn:replace(text, newline, '<br />')}" escapeXml="false" /></p>

<jsp:include page="../fragments/footer.jsp" />

</div>

</body>

</html>