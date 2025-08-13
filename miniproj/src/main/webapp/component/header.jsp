<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link href="/miniproj/resource/css/bootstrap.min.css" rel="stylesheet">
	<link href="/miniproj/resource/js/bootstrap.bundle.min.js" rel="stylesheet">
	<link href="/miniproj/resource/css/common.css" rel="stylesheet">
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container">
			<img src="/miniproj/image/pawIcon.png" alt="logo" style="width: 40px; height: 40px;" /> 
			<a class="nav-link text-brown" href="/miniproj/page/home.jsp" id="header-title">운명의 발바닥</a>
			<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarNav" style="justify-content: flex-end">
				<ul class="navbar-nav ms-auto">
					<li class="nav-item">
						<a class="nav-link" id="gnb" href="/miniproj/page/abandonedPet/abandonedPetList.jsp">인간과 펫</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" id="gnb" href="#">펫과 펫</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" id="gnb" href="#">커뮤니티</a>
					</li>
				</ul>
			</div>

			<div class="collapse navbar-collapse" id="navbarNav" style="justify-content: flex-end;">
				<ul class="navbar-nav ms-auto" style="gap: 10px">
					<li class="nav-item">
						<a class="nav-link btn btn-border-brown" href="#" id="border-btn">로그인</a>
					</li>
					<li class="nav-item">
						<a class="nav-link btn btn-brown" href="/miniproj/page/user/signUp.jsp" id="main-btn">회원가입</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>
</body>
</html>
