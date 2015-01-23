<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="d"%>
<%@ page import="com.zngn.stock.User" %>

<%@ page contentType="text/html; charset=utf-8"%>
<%@ page language="java" pageEncoding="utf-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<title>Anasayfa | OMÜ Alışveriş</title>
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">

</head>
<body>
	<div id="background-green">background</div>
	<div class="page">
		<div class="home-page">
			<div class="sidebar">
				<a href="${pageContext.request.contextPath}/" id=logo>
					<img src="<c:url value="/resources/images/logo.png" />" alt="" />

				</a>
				<ul>
					<li class="selected home"><a
						href="${pageContext.request.contextPath}/"> Anasayfa</a></li>
					<li class="about">
					<%if(session.getAttribute("users")==null) {%>
					<a href="${pageContext.request.contextPath}/login">Giriş/Kayıt</a></li>
					<%} else{%>
					<a href="${pageContext.request.contextPath}/profil">Profil</a></li>
					
					<%} %>
					
					<li class="projects"><a
						href="${pageContext.request.contextPath}/addProduct">Ürün Ekle</a>
					</li>

					<li class="contact"><a
						href="${pageContext.request.contextPath}/contact">İletişim</a></li>
				</ul>
				<div class="connect">
					<a href="http://freewebsitetemplates.com/go/facebook/" id="fb">facebook</a>
					<a href="http://freewebsitetemplates.com/go/twitter/" id="twitter">twitter</a>
					<a href="http://freewebsitetemplates.com/go/googleplus/"
						id="googleplus">google+</a> <a
						href="http://freewebsitetemplates.com/go/youtube/" id="youtube">youtube</a>
				</div>
			</div>
			<div class="body">
				<div class="content-project">
					<div>
 								<% if(session.getAttribute("users")!=null){
 								User user = (User)session.getAttribute("users");
 								%>
 								<p align="center">Hoş Geldiniz Sayın ${users.name}   </p>
								<br/><p align="center">  <a href="${pageContext.request.contextPath}/logout">Çıkış</a></p>
						<% } %>
						<h3>Ürünlerimiz</h3>
					</div>

					<div>
						<p>Açıklamalar vs vs</p>
						<ul>
							<d:forEach var="urun" items="${urunler}">
								<form method="post"
									action="${pageContext.request.contextPath}/product">
									<li><a href="${pageContext.request.contextPath}/product">
											<img src="/controller/showPhoto?urunID=${urun.urunID}" height="250" width="368" />
							
											<input type ="hidden" name ="urunID" value=${urun.urunID }  />
									</a> <span><a href="urun#">${urun.aciklama}</a></span>
									<input
										type="submit" value="İncele" />
										</li> 
								</form>
							</d:forEach>
						</ul>
						
					</div>
				</div>
				<div class="footer">
					<p>&#169; 2023 Origins Interior Architects</p>
					<ul>
						<li><a href="index.html">Home</a></li>
						<li><a href="about.html">About</a></li>
						<li><a href="projects.html">Projects</a></li>
						<li><a href="blog.html">Blog</a></li>
						<li><a href="contact.html">Contact</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</body>
</html>