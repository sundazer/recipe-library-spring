<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
	<title>Add a recipe</title>
</head>
<body>
<div class="container">

<jsp:include page="../fragments/header.jsp" />

	<div id="formsContent">
		<form:form class="form-horizontal" role="form" id="form" method="post" modelAttribute="recipe">
			<div class="header">
		  		<h2>Add a new recipe...</h2>
			</div>
		  	<fieldset>
		  	<div class="form-group">
		  		<form:label path="name">
		  			Name <form:errors path="name" />
		 		</form:label>
		  		<form:input type="text" class="form-control" path="name" />
			</div>
	
		  	<div class="form-group">
		  		<form:label path="description">
		  			Description
		  		</form:label>
		  		<form:textarea class="form-control" rows="1" path="description" />
			</div>
	
		  	<div class="form-group">
		  		<form:label path="instructions">
		  			Instructions
		  		</form:label>
		  		<form:textarea class="form-control" rows="3" path="instructions" />
		  	</div>
	
		  	</fieldset>
	
			<p><button type="submit">Submit</button></p>
		</form:form>
	</div>

<jsp:include page="../fragments/footer.jsp" />


</div>
</body>
</html>