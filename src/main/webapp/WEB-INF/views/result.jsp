<!DOCTYPE HTML>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <title>Recipe Added</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
</head>
<body>
	<h1>Result</h1>
    <p> 'name: ' + ${recipe.name}" </p>
    <p> 'description: ' + ${recipe.description}" </p>
    <p> 'instructions: ' + ${recipe.instructions}" </p>
    <a href="/recipes">Back to recipes</a>
</body>
</html>