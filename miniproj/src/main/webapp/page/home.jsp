<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>운명의 발바닥</title>
	<link href="../resource/css/bootstrap.min.css" rel="stylesheet">
	<link href="../resource/css/common.css" rel="stylesheet">
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
				color: white;
			}
			
			.btn-border-brown {
				border: 1px solid #a75d00;
				color: #a75d00;
				background-color: transparent;
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
		<div class="hero-section" style="border: 1px solid #a75d00">
			<h2 class="fw-bold">당신의 완벽한 펫 동반자를 찾아보세요</h2>
			<p class="text-muted">숨은 입양 가능 강아지와 고양이를 검색해 보세요. 모두가 행복한 연결을 위해 함께 합니다.</p>
			<div class="mt-4" style="display: flex; gap: 50px; justify-content: center;">
				<a href="#" class="btn text-white me-2" style="background-color: #a75d00; color: white;">운명의 동물 퀴즈</a> 
				<a href="#" class="btn" style="border: 1px solid #a75d00; color: #a75d00; background-color: transparent;">운명의 동물 보기</a>
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
						class="card-img-top" alt="크림과 츄세이" style="border: 1px solid #a75d00">
					<div class="card-body" style="padding: 1rem; border: 1px solid #a75d00">
						<h5 class="card-title fw-bold">믹스견</h5>
						<p class="card-text text-muted">4개월,접종(종합백신/코로나장염/광견병),데피니트,구충제,스팟라인</p>
						<ul style="display: grid; grid-template-columns: 1fr 1fr 1fr; padding: 0; row-gap: 5px;">
							<li style="display:flex; align-items: center; gap: 4px; font-size: 10px;">
								<img src="../image/ico_age.png" style="width:15px; height:15px; object-fit: contain;" />
								<span>나이 : 1세</span>
							</li>	
							<li style="display:flex; align-items: center; gap: 4px; font-size: 10px;"><img src="../image/ico_mbti.png" style="width:15px; height:15px; object-fit: contain;" /><span>MBTI : ISTP</span></li>	
							<li style="display:flex; align-items: center; gap: 4px; font-size: 10px;"><img src="../image/ico_gender.png" style="width:15px; height:15px; object-fit: contain;" /><span>성별 : 수컷</span></li>	
							<li style="display:flex; align-items: center; gap: 4px; font-size: 10px;"><img src="../image/ico_location.png" style="width:15px; height:15px; object-fit: contain;" /><span>경남 성남시</span></li>	
						</ul>
						<a href="#" class="btn text-white" style="background-color: #a75d00; color: white; display: block">자세히 보기</a>
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
					<img src="../image/img_tipcommunity.png" class="card-img-top" alt="반려동물 봉사활동">
					<div class="card-body">
						<h5 class="card-title">반려동물 키우는 팁</h5>
						<p class="card-text text-muted">반려동물 키우는 팁을 공유해요~</p>
						<a href="#" class="btn text-white" style="background-color: #a75d00; color: white; display: block">커뮤니티 참여하기</a>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card shadow-sm">
					<img src="../image/img_tipcommunity.png" class="card-img-top" alt="반려동물 건강 상담">
					<div class="card-body">
						<h5 class="card-title">내 반려동물 자랑</h5>
						<p class="card-text text-muted">예쁘고 귀여운 내 반려동물을 공유해요~</p>
						<a href="#" class="btn text-white" style="background-color: #a75d00; color: white; display: block">커뮤니티 참여하기</a>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card shadow-sm">
					<img src="../image/img_tipcommunity.png" class="card-img-top" alt="산책 메이트">
					<div class="card-body">
						<h5 class="card-title">실종 반려동물 찾아주세요</h5>
						<p class="card-text text-muted">내 반려동물 좀 찾아주세요...</p>
						<a href="#" class="btn text-white" style="background-color: #a75d00; color: white; display: block">커뮤니티 참여하기</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<%@ include file="../component/footer.jsp" %>
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
