<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
	<title>Add a recipe</title>
</head>
<body>
<jsp:include page="../fragments/header.jsp" />
	<div id="formsContent">
		<h2>New recipe</h2>
		<form:form id="form" method="post" modelAttribute="recipe">
			<div class="header">
		  		<h2>Form</h2>
			</div>
		  	<fieldset>
		  		<form:label path="name">
		  			Name <form:errors path="name" />
		 		</form:label>
		  		<form:input path="name" />
	
		  		<form:label path="description">
		  			Description
		  		</form:label>
		  		<form:textarea path="description" />

		  		<form:label path="instructions">
		  			Instructions
		  		</form:label>
		  		<form:textarea path="instructions" />
		  	</fieldset>
	
			<p><button type="submit">Submit</button></p>
		</form:form>
	</div>
<jsp:include page="../fragments/footer.jsp" />

</body>
</html>