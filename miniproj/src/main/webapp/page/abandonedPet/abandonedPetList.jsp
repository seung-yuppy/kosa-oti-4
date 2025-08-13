<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>인간과 펫(유기동물 리스트)</title>
	<link href="/miniproj/resource/css/common.css" rel="stylesheet">
	<link href="/miniproj/resource/css/bootstrap.min.css" rel="stylesheet">
	<link href="/miniproj/resource/js/bootstrap.bundle.min.js" rel="stylesheet">
</head>
<body>
	<!-- 헤더 영역 -->
	<%@ include file="../../component/header.jsp"%>
	<div class="container mt-4">
		<div class="row g-4">
			<!-- 필터 선택 영역 -->
			<aside class="col-lg-3">
				<div class="filter-card p-3 shadow-sm" id="main-border">
					<h5 class="fw-bold mb-3" id="main-text">필터</h5>
					<form method="GET">
						<div class="mb-3">
							<label for="animalType" id="main-text">동물 종류</label> 
							<select class="form-control" id="animalType" name="animalType">
								<option value="all" selected>전체</option>
								<option value="dog">강아지</option>
								<option value="cat">고양이</option>
							</select>
						</div>
						<div class="mb-3">
							<label for="location" id="main-text">보호소 위치</label> 
							<select class="form-control" id="location" name="location">
								<option value="all" selected>전체</option>
								<option value="seoul">서울특별시</option>
								<option value="gyeonggi">경기도</option>
								<option value="gangwon">강원도</option>
								<option value="gyeongnam">경상남도</option>
								<option value="gyeongbuk">경상북도</option>
							</select>
						</div>
						<div class="mb-3">
							<label for="gender" class="form-label" id="main-text">성별</label> 
							<select class="form-control" id="gender" name="gender">
								<option value="all" selected>전체</option>
								<option value="male">남자</option>
								<option value="female">여자</option>
							</select>
						</div>
						<div class="mb-3">
							<label for="size" class="form-label" id="main-text">사이즈</label> 
							<select class="form-control" id="size" name="size">
								<option value="all" selected>전체</option>
								<option value="small">소</option>
								<option value="medium">중</option>
								<option value="large">대</option>
							</select>
						</div>
						<div class="mb-3">
							<label for="age" class="form-label" id="main-text">나이</label> 
							<select class="form-control" id="age" name="age">
								<option value="all" selected>전체</option>
								<option value="0-3">0~3세</option>
								<option value="4-7">4~7세</option>
								<option value="8+">8세 이상</option>
							</select>
						</div>
						<hr>
						<div id="btn-container">
							<button type="reset" class="btn w-100" id="border-btn">필터 초기화</button>
							<button type="submit" class="btn w-100" id="main-btn">검색하기</button>
						</div>
					</form>
				</div>
			</aside>
			<!-- 유기동물 리스트 영역 -->
			<div class="col-lg-9">
				<h3 class="mb-4 fw-bold">입양 가능 펫 목록</h3>
				<div class="row g-3">
				<% 
					for (int i = 0; i < 5; i++) {
				%>
						<jsp:include page="/component/petCard.jsp"></jsp:include>
				<%
					}
				%>
				</div>
			</div>
		</div>
	</div>
	<!-- footer 영역 -->
	<%@ include file="../../component/footer.jsp"%>
</body>
</html>