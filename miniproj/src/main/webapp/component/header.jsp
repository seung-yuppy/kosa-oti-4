<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
	<div class="container">
		<img src="/miniproj/image/pawIcon.png" class="gnb-logo" alt="logo" /> 
		<a class="nav-link gnb-title" href="/miniproj/page/home.jsp">운명의 발바닥</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
			<span class="navbar-toggler-icon"></span>
		</button>
		
		<div class="collapse navbar-collapse" id="navbarNav">
			<ul class="navbar-nav ms-auto">
				<li class="nav-item">
					<a class="nav-link gnb-item" href="/miniproj/page/abandonedPet/abandonedPetList.jsp">
						인간과 펫
					</a>
				</li>
				<li class="nav-item">
					<a class="nav-link gnb-item" href="#">
						펫과 펫
					</a>
				</li>
				<li class="nav-item">
					<a class="nav-link gnb-item" href="#">
						커뮤니티
					</a>
				</li>
			</ul>
			<ul class="navbar-nav ms-auto">
				<li class="nav-item">
					<a class="nav-link btn btn-secondary-brown" href="#" id="border-btn">
						로그인
					</a>
				</li>
				<li class="nav-item">
					<a class="nav-link btn btn-brown" href="/miniproj/page/user/signUp.jsp">
						회원가입
					</a>
				</li>
			</ul>
		</div>
			
	</div>
</nav>