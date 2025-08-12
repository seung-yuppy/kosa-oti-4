<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>운명의 발바닥</title>
<!-- Bootstrap CSS -->
<link href="../resource/css/bootstrap.min.css" rel="stylesheet">
<style>
	body {
		background-color: white;
	}
	
	.hero-section {
		background-color: #fff4e6;
		padding: 3rem 1rem;
		text-align: center;
		border-radius: 8px;
	}
	
	.pet-card img {
		height: 200px;
		object-fit: cover;
	}
	
	.section-title {
		font-weight: bold;
		margin-bottom: 1.5rem;
	}
	
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
	<%@ include file="../component/header.jsp" %>
	<!-- 히어로 섹션 -->
	<div class="container my-5">
		<div class="hero-section">
			<h2 class="fw-bold">당신의 완벽한 펫 동반자를 찾아보세요</h2>
			<p class="text-muted">숨은 입양 가능 강아지와 고양이를 검색해 보세요. 모두가 행복한 연결을 위해 함께 합니다.</p>
			<div class="mt-4">
				<a href="#" class="btn btn-warning text-white me-2">맞춤동물</a> <a href="#"
					class="btn btn-outline-warning">유기동물 검색</a>
			</div>
		</div>
	</div>

	<!-- 나랑 잘 맞는 유기동물 -->
	<div class="container my-5">
		<h4 class="section-title">나랑 잘 맞는 유기동물</h4>
		<div class="row g-4" style="justify-content: center;">
			<%-- 샘플 카드 --%>
			<%
			for (int i = 0; i < 4; i++) {
			%>
			<div class="col-md-3">
				<div class="card pet-card shadow-sm">
					<img
						src="https://www.animal.go.kr/front/fileMng/imageView.do?f=/files/shelter/2025/08/202508121308544.jpg"
						class="card-img-top" alt="크림과 츄세이">
					<div class="card-body">
						<h5 class="card-title fw-bold">믹스견</h5>
						<p class="card-text text-muted">4개월,접종(종합백신/코로나장염/광견병),데피니트,구충제,스팟라인</p>
						<a href="#" class="btn btn-warning btn-sm text-white">자세히 보기</a>
					</div>
				</div>
			</div>
			<%
			}
			%>
		</div>
	</div>

	<!-- 커뮤니티 활동 -->
	<div class="container my-5">
		<h4 class="section-title">커뮤니티 활동 둘러보기</h4>
		<div class="row g-4">
			<div class="col-md-4">
				<div class="card shadow-sm">
					<img src="https://placehold.co/600x400" class="card-img-top" alt="반려동물 봉사활동">
					<div class="card-body">
						<h5 class="card-title">반려동물 봉사활동</h5>
						<p class="card-text text-muted">함께하는 봉사활동을 통해 사랑을 나눠보세요.</p>
						<a href="#" class="btn btn-warning btn-sm text-white">자세히 보기</a>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card shadow-sm">
					<img src="https://placehold.co/600x400" class="card-img-top" alt="반려동물 건강 상담">
					<div class="card-body">
						<h5 class="card-title">반려동물 건강 상담</h5>
						<p class="card-text text-muted">전문가와 함께하는 반려동물 건강 관리</p>
						<a href="#" class="btn btn-warning btn-sm text-white">자세히 보기</a>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card shadow-sm">
					<img src="https://placehold.co/600x400" class="card-img-top" alt="산책 메이트">
					<div class="card-body">
						<h5 class="card-title">내 반려동물의 여행길</h5>
						<p class="card-text text-muted">함께하는 여행과 추억을 기록해 보세요.</p>
						<a href="#" class="btn btn-warning btn-sm text-white">자세히 보기</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<%@ include file="../component/footer.jsp" %>
</body>
</html>
