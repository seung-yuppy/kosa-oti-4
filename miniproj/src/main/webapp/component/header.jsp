<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../resource/css/bootstrap.min.css" rel="stylesheet">
<style>
	.btn-brown {
		background-color: #a75d00;
	}
	
	.btn-border-brown {
		border: 1px solid #a75d00;
	}
	
	.text-brown {
		color: #a75d00;
		text-decoration: none;
	}
</style>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container">
			<img src="../image/pawIcon.png" alt="logo" style="width: 40px; height: 40px;" /> <a
				class="nav-link text-brown" href="#">운명의 발바닥</a>
			<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
				data-bs-target="#navbarNav">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav" style="justify-content: flex-end">
				<ul class="navbar-nav ms-auto">
					<li class="nav-item"><a class="nav-link" href="#">인간과 펫</a></li>
					<li class="nav-item"><a class="nav-link" href="#">펫과 펫</a></li>
					<li class="nav-item"><a class="nav-link" href="#">커뮤니티</a></li>
				</ul>
			</div>
			<div class="collapse navbar-collapse" id="navbarNav" style="justify-content: flex-end;">
				<ul class="navbar-nav ms-auto" style="gap: 10px">
					<li class="nav-item"><a class="nav-link btn btn-border-brown text-dark" href="#">로그인</a></li>
					<li class="nav-item"><a class="nav-link btn btn-brown text-white" href="#">회원가입</a></li>
				</ul>
			</div>
		</div>
	</nav>
</body>
</html>