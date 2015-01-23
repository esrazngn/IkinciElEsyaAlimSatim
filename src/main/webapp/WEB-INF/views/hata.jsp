<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page contentType="text/html; charset=utf-8"%>
<%@ page language="java" pageEncoding="utf-8"%>
<!DOCTYPE html>
<!-- Website template by freewebsitetemplates.com -->
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<title>Hata | OMÜ Alışveriş</title>
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">

</head>
<body>
	<div id="background-green">background</div>
	<div class="page">
		<div class="home-page">
			<div class="sidebar">
				<a href="${pageContext.request.contextPath}/"
					id=logo> <img
					src="<c:url value="/resources/images/logo.png" />" alt="" />

				</a>
				<ul>
					<li class="selected home"><a
						href="${pageContext.request.contextPath}/">
							Anasayfa</a></li>
					<li class="about">
					<a href="${pageContext.request.contextPath}/login">
							Giriş/Kayıt</a></li>
					<li class="projects"><a href="${pageContext.request.contextPath}/addProduct">Ürün Ekle</a>
					</li>

					<li class="contact"><a href="${pageContext.request.contextPath}/contact">İletişim</a></li>
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
						<h3>Hata</h3>
					</div>

					<div>
						<p>Beklenmedik bir hata oluştu...</p>
						
						<div class="paging">
							<ul>
								<li class="selected"><a href="#">1</a></li>
								<li><a href="#">2</a></li>
								<li><a href="#"></a></li>
							</ul>
						</div>
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