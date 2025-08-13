<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page import="java.util.List, java.util.ArrayList" %>

<%
    // 예시용 하드코딩 데이터
    String name = "김민준";
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

#brown-btn {
	background-color: #a75d00;
	color: white;
}

#brown-btn:hover {
	background-color: #cc7000;
	color: white;
}

.section {
	margin-bottom: 50px;
}

.card img {
	border-radius: 10px;
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


</style>
<!-- Bootstrap 5 -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body class="container my-5">
	<%@ include file="../../component/header.jsp"%>
	<!-- 프로필 정보 -->
	<div class="section">
		<h3>프로필 정보</h3>

		<div class="mb-3">
			<label class="form-label">이름</label>
			<div class="card">
				<div class="card-body"><%= name %></div>
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
		<button type="button" class="btn" data-bs-toggle="modal"
			data-bs-target="#editProfileModal" id="brown-btn">프로필 수정</button>
	</div>


	<!-- 관심 입양 동물 -->
	<div class="section">
		<h3>내가 관심 있는 입양 동물</h3>
		<div class="row row-cols-1 row-cols-md-4 g-4 mt-3" id="animal-list">
			<% for (int i = 0; i < animals.size(); i++) {
        Animal a = animals.get(i);
        boolean isHidden = i >= 4; // 5번째부터 숨김
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
<div class="text-center mt-3">
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
		<div class="section">
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
						<p>새로운 입양 가이드라인에 대한 의견을 나누고 싶습니다. 최근 변경된 부분이 있는데, 공유해주신 분
							계신가요?</p>
						<span>👁️‍🗨️ 15 | 💬 3</span>
					</div>
					<div class="mb-3">
						<strong>박지훈</strong> <small class="text-muted">· 1분 전</small>
						<p>저희 집 고양이 뿌잉이가 새로운 장난감을 너무 좋아하네요! 고양이 장난감 추천 좀 해주세요.</p>
						<span>👁️‍🗨️ 28 | 💬 7</span>
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
</body>
</html>
