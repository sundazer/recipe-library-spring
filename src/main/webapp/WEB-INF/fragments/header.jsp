<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!-- Bootstrap 3.2 compiled and minified CSS -->
 <spring:url value="/webjars/bootstrap/3.2.0/css/bootstrap.min.css" var="bootstrapCss"/>
<link href="${bootstrapCss}" rel="stylesheet"/>

<nav class="navbar navbar-default" role="navigation">
	<div class="collapse navbar-collapse">
		<ul class="nav navbar-nav">
			<li style="width: 120px;"><a href="<spring:url value="/" htmlEscape="true" />">Home</a></li>
			<li style="width: 120px;"><a href="<spring:url value="/recipes" htmlEscape="true" />">Recipes</a></li>
			<li style="width: 120px;"><a href="<spring:url value="/recipes/add" htmlEscape="true" />">Add a recipe</a></li>
		</ul>
	</div>
</nav>