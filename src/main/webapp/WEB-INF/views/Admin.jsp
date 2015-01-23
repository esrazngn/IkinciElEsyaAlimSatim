<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page contentType="text/html; charset=utf-8"%>
<%@ page language="java" pageEncoding="utf-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>Admin | OMÜ Alışveriş</title>
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/css.css" />" rel="stylesheet">

</head>
<body>
	<div id="background-yellow">background</div>
	<div class="page">
		<div class="about-page">
			<div class="sidebar">
				<a href="${pageContext.request.contextPath}/"
					id=logo>
				<img
					src="<c:url value="/resources/images/logo.png" />" alt="" />
				
				</a>
				<ul>
					<li class="home"><a
						href="${pageContext.request.contextPath}/">
							Anasayfa</a></li>
					</li>
					<li class="selected about"><a href="${pageContext.request.contextPath}/admin">Admin</a>
					</li>
					<li class="projects"><a href="${pageContext.request.contextPath}/addProduct">Ürün Ekle</a>
					</li>

					<li class="contact"><a href="${pageContext.request.contextPath}/contact">İletişim</a></li>
				</ul>

			</div>
<div class="body">
				<div class="content-about">
					<div>
					
						<div>
<div class="container">
    
    
    


    <form id="register" method="POST" action="${pageContext.request.contextPath}/admin">
        
        <div class="header">
        
            <h3>İlan Kaldır</h3>
            
            <p>Kaldırmak istediğiniz ilan nosunu giriniz.</p>
            
        </div>
        

        <div class="inputs">
            
                        <input type="label" name="urunID" placeholder="İlan No" />
											<br/><input type="submit" value="Kaldır" />
        
        </div>
 
    
    <br /><br />
   <br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />	
    				    <br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />	




</div>


						</div>
	
					</div>
  
				</div>
    
				<div class="footer">
					<p>
						&#169; 2023 Origins Interior Architects
					</p>
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