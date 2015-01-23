<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="d"%>
<%@ page import="com.zngn.stock.User"%>

<%@ page contentType="text/html; charset=utf-8"%>
<%@ page language="java" pageEncoding="utf-8"%>


<!DOCTYPE html>
<!-- Website template by freewebsitetemplates.com -->
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<title>İletişim | OMÜ Alışveriş</title>
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">

</head>
<body>
	<div id="background-green2"></div>
	<div class="page">
		<div class="contact-page">
			<div class="sidebar">
				<a href="${pageContext.request.contextPath}/" id=logo> <img
					src="<c:url value="/resources/images/logo.png" />" alt="" />

				</a>
				<ul>
					<li class="home"><a href="${pageContext.request.contextPath}/">Anasayfa</a>
					</li>
					<li class="about">
						<%
							if (session.getAttribute("users") == null) {
						%> <a
						href="${pageContext.request.contextPath}/login">Giriş/Kayıt</a>
					</li>
					<%
						} else {
					%>
					<a href="${pageContext.request.contextPath}/profil">Profil</a>
					</li>

					<%
						}
					%>
					</li>
					<li class="projects"><a
						href="${pageContext.request.contextPath}/addProduct">Ürün Ekle</a>
					</li>

					<li class="selected contact"><a
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
				<div class="content-contact">
					<div>
						<div>
							<h3>İletişim</h3>
							<p>Bize mesaj gönderebilirsiniz.</p>
							<form action="index.html">
								<h4>Mesajınız</h4>
								<input type="text" value="Name *"
									onblur="this.value=!this.value?'Name *':this.value;"
									onfocus="this.select()" onclick="this.value = '';"> <input
									type="text" value="Email Address *"
									onblur="this.value=!this.value?'Email Address *':this.value;"
									onfocus="this.select()" onclick="this.value = '';"> <input
									type="text" value="Phone Number"
									onblur="this.value=!this.value?'Phone Number':this.value;"
									onfocus="this.select()" onclick="this.value = '';">
								<textarea name="comment" id="comment" cols="30" rows="10"
									onblur="this.value=!this.value?'Your Comment':this.value;"
									onfocus="this.select()" onclick="this.value='';">Your Comment</textarea>
								<input type="submit" class="submit" value="Mesaj Gönder">
							</form>
						</div>
						<div class="sidebar">
							<h3>İletişim Bilgilerimiz</h3>
							<span>Adres</span>
							<p>
								3933 Melrose Street <br> Spokane Valley, WA 99206
							</p>
							<span>Talk To Us</span>
							<p>
								Phone: 509.998.7719 <br> Email: <a href="@">info@originsarchitects.com</a>
							</p>
							<span>Office Hours</span>
							<p>
								Mondays to Fridays <br> 9:00 am to 5:00 pm <br>
								<br> Saturdays <br> 9:00 am to 12:00 pm <br>
								<br> Sundays <br> By appointment only
							</p>
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