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
	<div class="col-lg-3" style="max-width: 100%">
		<div class="card pet-card shadow-sm" >
			<img 
				src="https://www.animal.go.kr/front/fileMng/imageView.do?f=/files/shelter/2025/08/202508121308544.jpg"
				class="card-img-top"
				id="card-img"
				alt="크림과 츄세이" 
				style="border: 1px solid #a75d00;"
			/>
			<div class="card-body" id="card-body">
				<h5 class="card-title fw-bold">믹스견</h5>
				<p class="card-text text-muted" id="card-description">
					이 강아지는 첫 만남에는 조금 낯을 가리지만, 마음을 열면 세상에서 가장 든든한 동반자가 됩니다. 당신의 세심함과 이 아이의 순수함이 만나면 평생의 인연이 될 거예요.
				</p>
				<ul id="pet-list">
					<li id="pet-item">
						<img src="/miniproj/image/ico_mbti.png" id="pet-icon" />
						<span>MBTI : ISTP</span>
					</li>	
					<li id="pet-item">
						<img src="/miniproj/image/ico_gender.png" id="pet-icon" />
						<span>성별 : 수컷</span>
					</li>	
					<li id="pet-item">
						<img src="/miniproj/image/ico_location.png" id="pet-icon" />
						<span>경남 성남시</span>
					</li>	
					<li id="pet-item">
						<img src="/miniproj/image/ico_age.png" id="pet-icon" />
						<span>나이 : 1세</span>
					</li>	
				</ul>
				<a href="#" class="btn" id="main-btn" style="display:block">자세히 보기</a>
			</div>
		</div>
	</div>
	
	<script>
		document.addEventListener("DOMContentLoaded", () => {
			const cardTexts = document.querySelectorAll("#card-description");
			cardTexts.forEach((cardText) => {
				if(cardText.innerText.length > 14) 
					cardText.textContent = cardText.innerText.substring(0, 13) + "....";
			});
		});
	</script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>