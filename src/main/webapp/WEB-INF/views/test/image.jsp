<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<head>
    <title></title>
</head>


<body>
<h3>File Upload:</h3>
Select a file to upload: <br />
<form action="${pageContext.request.contextPath}/addProduct"  method="POST">
<input type="file" name="image" size="50" />
<br />
<input type="submit" value="Upload File" />
</form>
</body>
</html>