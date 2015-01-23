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
	<div id="background-lightyellow">
		background
	</div>
	<div class="page">
		<div class="project-page">
			<div class="sidebar">
				<a href="${pageContext.request.contextPath}/" id=logo> <img
					src="<c:url value="/resources/images/logo.png" />" alt="" />

				</a>
				<ul>
					<li class="home"><a href="${pageContext.request.contextPath}/">
							Anasayfa</a></li>
					
					<li class="about">
						<a href="${pageContext.request.contextPath}/profil">Profil</a>
					</li>
					<li class="selected projects">
						<a href="${pageContext.request.contextPath}/addProduct">Ürün Ekle</a>
					</li>

					<li class="contact"><a
						href="${pageContext.request.contextPath}/contact">İletişim</a></li>
				</ul>

			</div>
			<div class="body">
				<div class="content-project">
				<div class="header">

										<h3>Ürün Ekle</h3>
										<br/>
										
									</div>
									
					<div>
																																		<p>Ürün eklemek için bilgilerinizi giriniz.</p>
					
					<div>
					
							<div class="container">

								<form id="register" method="POST" commandName="urun"
									action="${pageContext.request.contextPath}/addProduct">

									
									<div class="inputs">
										<input type="label" name="urunID"
											placeholder="İlan no" autofocus /> <input
											type="label" name="urunAdi" placeholder="Urun Adı" autofocus /> <input
											type="label" name="aciklama" placeholder="Aciklama" autofocus />
										<input type="label" name="fiyat" placeholder="Fiyat"
											autofocus /> 
											<input type="label" name="kategoriID"
											placeholder="Kategori ID" autofocus />
											Fotograf   <input type="file" name="image" size="50" />
											
											 <br />
										<input type="submit" value="  Ürün Ekle  " />

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