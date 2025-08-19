<%@ page contentType="text/html; charset=UTF-8" language="java"%>
<%@ page import="java.util.List, java.util.ArrayList"%>
<%@ include file="../../component/passwordConfirm_modal.jsp" %>
<%
    // 예시용 하드코딩 데이터
    String email = "min44@naver.com";
    String address = "서울특별시 강남구 테헤란로 123";
    String nickname = "민민";
    boolean hasPet = true;
    
    
    //예시용 카드데이터(나중에 다른정보 추가해야함)
    class Animal {
        String name;
        String type;
        String image;

        Animal(String name, String type, String image) {
            this.name = name;
            this.type = type;
            this.image = image;
        }
    }

    List<Animal> animals = new ArrayList<>();
    animals.add(new Animal("럭키", "골든 리트리버", "http://openapi.animal.go.kr/openapi/service/rest/fileDownloadSrvc/files/shelter/2025/08/202508130908844.jpeg"));
    animals.add(new Animal("나비", "코리안 숏헤어", "http://openapi.animal.go.kr/openapi/service/rest/fileDownloadSrvc/files/shelter/2025/08/202508130908358.jpeg"));
    animals.add(new Animal("뽀삐", "푸들", "http://openapi.animal.go.kr/openapi/service/rest/fileDownloadSrvc/files/shelter/2025/08/202508130908635.jpeg"));
    animals.add(new Animal("두부", "시바견", "http://openapi.animal.go.kr/openapi/service/rest/fileDownloadSrvc/files/shelter/2025/08/202508130908273.jpeg"));
    animals.add(new Animal("초코", "말티즈", "http://openapi.animal.go.kr/openapi/service/rest/fileDownloadSrvc/files/shelter/2025/08/202508130808662.jpg"));
    animals.add(new Animal("콩이", "진돗개", "http://openapi.animal.go.kr/openapi/service/rest/fileDownloadSrvc/files/shelter/2025/08/202508131108540.jpg"));

    request.setAttribute("email", email);
    request.setAttribute("nickname", nickname);
%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
<style>
body {
	font-family: 'Pretendard', sans-serif;
	background-color: #f9f9f9;
}

.pet-card {
	height: 300px !important;
} 

.card-body {
	background-color: #fdfaf6;
}

.nav-tabs .nav-link.active {
	background-color: #a75d00 !important;
	color: white !important;
}

.nav-tabs .nav-link {
	background-color: #ffdeb3;
	color: gray;
	border: 1px solid #8B5E3C !important;
}

.flex-container {
	display: flex;
	flex-direction: row;
	text-align: center;
}

.flex-item-left {
	flex: 50%;
}

.flex-item-right {
	flex: 50%;
}

.search-card {
	width: 1020px;
	margin: 0 auto;
	height: 410px;
}

.swiper-button-next {
	background: url(/miniproj/image/ico_next.png) no-repeat;
	background-size: 50% auto;
	background-position: center;
	&::after{
		display:none;
}

}
.swiper-button-prev {
	background: url(/miniproj/image/ico_prev.png) no-repeat;
	background-size: 50% auto;
	background-position: center;
	&::after{
		display: none;
}
</style>
<!-- Bootstrap 5 -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link href="/miniproj/resource/css/common.css" rel="stylesheet">
<link href="/miniproj/resource/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />

</head>
<body>
	<%@ include file="../../component/header.jsp"%>
	<div class="container my-5">
		<!-- 프로필 정보 -->
		<div class="flex-container">
			<div class="section flex-item-left">
				<h3>프로필 정보</h3>
				<hr>
				<div class="mb-3">
					<label class="form-label">이메일 주소</label>
					<div class="card">
						<div class="card-body"><%= email %></div>
					</div>
				</div>

				<div class="mb-3">
					<label class="form-label">주소</label>
					<div class="card">
						<div class="card-body"><%= address %></div>
					</div>
				</div>

				<div class="mb-3">
					<label class="form-label">닉네임</label>
					<div class="card">
						<div class="card-body"><%= nickname %></div>
					</div>
				</div>

				<div class="mb-3">
					<label class="form-label d-block">반려동물 소유 여부</label>
					<div class="card">
						<div class="card-body"><%= hasPet ? "예" : "아니요" %></div>
					</div>
				</div>

				<!-- 수정 버튼 -->
				<button type="button" class="btn btn-brown" data-bs-toggle="modal"
					data-bs-target="#passwordComfirmModal">프로필 수정</button>
			</div>
			<!-- 오른쪽화면(펫 프로필 확인) -->
			<div class="flex-item-right d-grid" style="margin-top: -60px;">
				<div class="swiper swiper-container"
					style="width: 100%; height: 550px;">
					<div class="swiper-wrapper">
						<% for (int i = 0; i < 3; i++) { %>
						<div class="swiper-slide">
							<jsp:include page="/component/myPetCard.jsp" />
						</div>
						<% } %>
					</div>

					<!-- 화살표 -->
					<div class="swiper-button-next"></div>
					<div class="swiper-button-prev"></div>
				</div>
				<div class="mb-3">
					<a type="button" class="btn btn-brown"
						href="/miniproj/page/pet/petSignUp.jsp">내 반려동물 등록하기</a>
				</div>

				<!-- swiper js -->
				<script
					src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>
				<script>
    const swiper = new Swiper(".swiper-container", {
      navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev",
      },
      loop: true,
    });
  </script>
			</div>

		</div>

	</div>

	<!-- 관심 유기 동물 -->
	<div class="container my-5 section">
		<h3>내가 관심 있는 유기동물</h3>
		<div class="row row-cols-1 row-cols-md-4 g-4 mt-3" id="animal-list">
			<% for (int i = 0; i < animals.size(); i++) {
        Animal a = animals.get(i);
        boolean isHidden = i >= 4; 
    %>
			<div class="col animal-card <%= isHidden ? "more-card" : "" %>"
				style="<%= isHidden ? "display: none;" : "" %>">
				<div class="card h-100">
					<img src="<%= a.image %>" class="card-img-top" alt="<%= a.name %>">
					<div class="card-body">
						<h5 class="card-title"><%= a.name %></h5>
						<p class="card-text"><%= a.type %></p>
						<a href="#" class="btn btn-outline-secondary btn-sm">자세히 보기</a>
					</div>
				</div>
			</div>
			<% } %>
		</div>
	</div>
	<div class="container my-5 text-center mt-3">
		<button class="btn btn-outline-secondary" id="toggle-btn">더보기</button>
	</div>

	<script>
    document.getElementById("toggle-btn").addEventListener("click", function () {
        const hiddenCards = document.querySelectorAll(".more-card");
        const isHidden = hiddenCards[0].style.display === "none";

        hiddenCards.forEach(card => {
            card.style.display = isHidden ? "block" : "none";
        });

        this.textContent = isHidden ? "접기" : "더보기";
    });
</script>


	<!-- 커뮤니티 활동 (탭 전환) -->
	<div class="container my-5 section">
		<h3 class="mb-3">내 커뮤니티 활동</h3>

		<!-- 탭 버튼 -->
		<ul class="nav nav-tabs" id="activityTabs">
			<li class="nav-item">
				<button class="nav-link active" id="posts-tab" data-bs-toggle="tab"
					data-bs-target="#posts" type="button" role="tab">게시글</button>
			</li>
			<li class="nav-item">
				<button class="nav-link" id="comments-tab" data-bs-toggle="tab"
					data-bs-target="#comments" type="button" role="tab">댓글</button>
			</li>
		</ul>

		<!-- 탭 콘텐츠 -->
		<div class="tab-content border border-top-0 p-3"
			id="activityTabsContent">
			<!-- 게시글 -->
			<div class="tab-pane fade show active" id="posts" role="tabpanel">
				<div class="mb-3">
					<strong>이서연</strong> <small class="text-muted">· 2시간 전</small>
					<p>새로운 입양 가이드라인에 대한 의견을 나누고 싶습니다. 최근 변경된 부분이 있는데, 공유해주신 분 계신가요?</p>
					<div class="d-flex align-items-center gap-3 mt-2">
						<div class="d-flex align-items-center gap-1">
							<img src="/miniproj/image/ico_like.png" alt="좋아요" width="18"
								height="18"> <span>1,234</span>
						</div>
						<div class="d-flex align-items-center gap-1">
							<img src="/miniproj/image/ico_comment.png" alt="댓글" width="18"
								height="18"> <span>45</span>
						</div>
						<div class="d-flex align-items-center gap-1">
							<img src="/miniproj/image/ico_watch.png" alt="조회수" width="18"
								height="18"> <span>210</span>
						</div>
					</div>

				</div>
				<div class="mb-3">
					<strong>박지훈</strong> <small class="text-muted">· 1분 전</small>
					<p>저희 집 고양이 뿌잉이가 새로운 장난감을 너무 좋아하네요! 고양이 장난감 추천 좀 해주세요.</p>
					<div class="d-flex align-items-center gap-3 mt-2">
						<div class="d-flex align-items-center gap-1">
							<img src="/miniproj/image/ico_like.png" alt="좋아요" width="18"
								height="18"> <span>1,234</span>
						</div>
						<div class="d-flex align-items-center gap-1">
							<img src="/miniproj/image/ico_comment.png" alt="댓글" width="18"
								height="18"> <span>45</span>
						</div>
						<div class="d-flex align-items-center gap-1">
							<img src="/miniproj/image/ico_watch.png" alt="조회수" width="18"
								height="18"> <span>210</span>
						</div>
					</div>
				</div>
			</div>

			<!-- 댓글 -->
			<div class="tab-pane fade" id="comments" role="tabpanel">
				<div class="mb-3">
					<strong>김민준</strong> <small class="text-muted">· 30분 전</small>
					<p>
						<em>이서연</em>님의 글에 댓글: 저도 같은 의견입니다. 새로운 기준 좋네요.
					</p>
				</div>
				<div class="mb-3">
					<strong>김민준</strong> <small class="text-muted">· 1일 전</small>
					<p>
						<em>정하윤</em>님의 글에 댓글: 다음 봉사활동도 같이 가요!
					</p>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="../../component/footer.jsp"%>
	<script src="/miniproj/resource/js/bootstrap.bundle.min.js"></script>
</body>
</html>
