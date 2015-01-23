<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>

<%@ page contentType="text/html; charset=utf-8"%>
<%@ page language="java" pageEncoding="utf-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>Giriş/Kayıt | OMÜ Alışveriş</title>
<link href="<c:url value="resources/css/style.css" />" rel="stylesheet">
<link href="<c:url value="resources/css/css.css" />" rel="stylesheet">

</head>
<body>
	<div id="background-yellow">background</div>
	<div class="page">
		<div class="about-page">
			<div class="sidebar">
				<a href="${pageContext.request.contextPath}/" id=logo> <img
					src="<c:url value="/resources/images/logo.png" />" alt="" />

				</a>
				<ul>
					<li class="home"><a href="${pageContext.request.contextPath}/">
							Anasayfa</a></li>
					</li>
					<li class="selected about"><a
						href="${pageContext.request.contextPath}/login">Giriş/Kayıt</a></li>
					<li class="projects"><a
						href="${pageContext.request.contextPath}/addProduct">Ürün Ekle</a>
					</li>

					<li class="contact"><a
						href="${pageContext.request.contextPath}/contact">İletişim</a></li>
				</ul>

			</div>
			<div class="body">
				<div class="content-about">
					<div>

						<div>
							<div class="container">

								<form id="register" method="POST" commandName="personlogin"
									action="${pageContext.request.contextPath}/login">


									<div class="header">

										<h3>Giriş Yap</h3>
										<p>Giriş yapmak için bilgilerinizi giriniz.</p>
									</div>
									<div class="inputs">
										<input type="label" name="username"
											placeholder="Kullanıcı Adı" autofocus /> <input
											type="password" name="password" placeholder="Şifre" /> <br />
										<input type="submit" value="  Giriş  " />

									</div>

								</form>

								<form id="register" method="POST" commandName="users"
									action="${pageContext.request.contextPath}/add">

									<div class="header">

										<h3>Kayıt Ol</h3>

										<p>Üye kaydı için aşağıdaki formu doldurunuz.</p>

									</div>


									<div class="inputs">
										<input type="label" name="username"
											placeholder="Kullanıcı Adı" autofocus /> <input
											type="password" name="password" placeholder="Şifre" /> <input
											type="label" name="name" placeholder="Adınız" autofocus /> <input
											type="label" name="surname" placeholder="Soyadınız" autofocus />
										<input type="label" name="phone" placeholder="Telefon"
											autofocus /> <input type="email" name="adres"
											placeholder="E-posta" autofocus /> <br />
										<input type="submit" value="  Kayıt Ol  " />

									</div>

								</form>
								<br /> <br /> <br /> <br /> <br /> <br /> <br /> <br />
								<br /> <br /> <br /> <br /> <br />
							</div>


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