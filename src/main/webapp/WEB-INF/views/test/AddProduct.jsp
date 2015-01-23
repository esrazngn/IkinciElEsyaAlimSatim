<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="d"%>

<%@ page session="false"%>
<%@ page contentType="text/html; charset=utf-8"%>
<%@ page language="java" pageEncoding="utf-8"%>
<!DOCTYPE html>
<!-- Website template by freewebsitetemplates.com -->
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<title>Ürün Detay | OMÜ Alışveriş</title>
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
<link href="<c:url value="resources/css/css.css" />" rel="stylesheet">

</head>
<body>
	<div id="background-lightyellow">
		background
	</div>
	<div class="page">
		<div class="project-page">
			<div class="sidebar">
				<a href="${pageContext.request.contextPath}/"
					id=logo>
				<img
									src="<c:url value="/resources/images/logo.png" />"
									alt="" /> 
				</a>
				<ul>
					<li class="home">
						<a href="${pageContext.request.contextPath}/">Anasayfa</a>
					</li>
					<li class="about">
						<a href="${pageContext.request.contextPath}/login">Giriş/Kayıt</a>
					</li>
					<li class="selected projects">
						<a href="${pageContext.request.contextPath}/addProduct">Ürün Ekle</a>
					</li>
					
					<li class="contact">
						<a href="${pageContext.request.contextPath}/contact">İletişim</a>
					</li>
				</ul>
				<div class="connect">
					<a href="http://freewebsitetemplates.com/go/facebook/" id="fb">facebook</a> <a href="http://freewebsitetemplates.com/go/twitter/" id="twitter">twitter</a> <a href="http://freewebsitetemplates.com/go/googleplus/" id="googleplus">google+</a> <a href="http://freewebsitetemplates.com/go/youtube/" id="youtube">youtube</a>
				</div>
			</div>
			<div class="body">
				<div class="content-project">
					<div>
						<h3>Ürün Ekle</h3>
						
					</div>
				
                   
					
                     <form id="register" method="POST" commandName="urun"
									action="${pageContext.request.contextPath}/addProduct">

									<div class="header">

										

										<p>Ürün eklemek için aşağıdaki formu doldurunuz.</p>


</div>
									<div class="inputs">
										<input type="label" name="urunID"
											placeholder="İlan no" autofocus /> <input
											type="label" name="urunAdi" placeholder="Urun Adı" autofocus /> <input
											type="label" name="aciklama" placeholder="Aciklama" autofocus />
										<input type="label" name="fiyat" placeholder="Fiyat"
											autofocus /> 
											<input type="file" name="image" value="Fotograf Ekle" size="50" />
											
											<input type="label" name="kategori"
											placeholder="Kategori ID" autofocus /> <br />
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
					
					<ul>
						<li>
							<a href="index.html">Home</a>
						</li>
						<li>
							<a href="about.html">About</a>
						</li>
						<li>
							<a href="projects.html">Projects</a>
						</li>
						<li>
							<a href="blog.html">Blog</a>
						</li>
						<li>
							<a href="contact.html">Contact</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</body>
</html>