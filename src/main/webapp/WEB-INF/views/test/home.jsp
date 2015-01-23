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

<title>Anasayfa | OMÜ Alışveriş</title>
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">

</head>
<body>
	<div id="background-green">background</div>
	<div class="page">
		<div class="home-page">
			<div class="sidebar">
				<a href="${pageContext.request.contextPath}/person/home"
					id=logo> <img
					src="<c:url value="/resources/images/logo.png" />" alt="" />

				</a>
				<ul>
					<li class="selected home"><a
						href="${pageContext.request.contextPath}/HomePage">
							Anasayfa</a></li>
					<li class="about">
					<a href="${pageContext.request.contextPath}/person/add.html">
							Giriş/Kayıt</a></li>
					<li class="projects"><a href="${pageContext.request.contextPath}/ProductDetails">Ürünler</a>
					</li>

					<li class="contact"><a href="${pageContext.request.contextPath}/Contact">İletişim</a></li>
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
						<h3>Ürünlerimiz</h3>
					</div>

					<div>
						<p>Açıklamalar vs vs</p>
						<ul>
							<li><a href="urun#"> <img
									src="<c:url value="/resources/images/project-gallery1.jpg" />"
									alt="" />
							</a> <span><a href="urun#">Açıklama 1</a></span></li>
							<li><a href="urun#"><img
									src="<c:url value="/resources/images/project-gallery2.jpg" />"
									alt="" /> 
							</a> <span><a href="urun#">Açıklama 2</a></span></li>
							<li><a href="urun#"> <img
									src="<c:url value="/resources/images/project-gallery3.jpg" />"
									alt="" />
							</a> <span><a href="urun#">Açıklama 3</a></span></li>
							<li><a href="urun#"> <img
									src="<c:url value="/resources/images/project-gallery4.jpg" />"
									alt="" />

							</a> <span><a href="urun#">Açıklama 4</a></span></li>
							<li><a href="urun#"> <img
									src="<c:url value="/resources/images/project-gallery5.jpg" />"
									alt="" />

							</a> <span><a href="urun#">Açıklama 5</a></span></li>
							<li><a href="urun#"> <img
									src="<c:url value="/resources/images/project-gallery6.jpg" />"
									alt="" />

							</a> <span><a href="urun#">Açıklama 6</a></span></li>
						</ul>
						<div class="paging">
							<ul>
								<li class="selected"><a href="#">1</a></li>
								<li><a href="#">2</a></li>
								<li><a href="#">></a></li>
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