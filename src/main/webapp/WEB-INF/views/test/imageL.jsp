<%@ page language="java" contentType="text/html; charset=ISO-8859-1"

    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table border="1px" cellpadding="0" cellspacing="0">
						<thead>
							<tr>
								<th width="10%">İlan no</th>
								<th width="10%">Aciklama</th>
								<th width="15%">fiyat</th>
								
							</tr>
						</thead>
						<tbody>
							<c:forEach var="person" items="${personList}">
								<tr>
									<td>${person.person_id}</td>
									<td>${person.first_name}</td>
									
            <td>
<img src="/controller/sho?person_id=${person.person_id}"/>
            </td>

									
								</tr>
							</c:forEach>
						</tbody>
					</table>
</body>
</html>