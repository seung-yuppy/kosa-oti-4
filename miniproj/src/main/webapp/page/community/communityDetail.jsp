<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<style>
/* ====== Community Toolbar (container/title/searchbar/tabs/actions) — START ====== */
.container {
	max-width: 980px;
	margin: 0 auto;
	padding: 28px 18px 40px;
}

/* ===== Header ===== */
.title {
	font-weight: 800;
	font-size: 34px;
	margin: 0 0 16px;
}

.searchbar {
	display: flex;
	align-items: center;
	gap: 10px;
	margin-bottom: 12px;
}

.searchbar .field {
	position: relative;
	flex: 1;
}

.searchbar input {
	width: 100%;
	height: 44px;
	padding: 0 12px 0 42px;
	border: 1px solid #e6e8eb;
	border-radius: 12px;
	background: #fff;
	outline: none;
	font-size: 14px;
}

.searchbar .icon {
	position: absolute;
	left: 12px;
	top: 50%;
	transform: translateY(-50%);
	width: 18px;
	height: 18px;
	opacity: .5;
}

.searchbar .btn {
	height: 44px;
	padding: 0 16px;
	border: 1px solid #e6e8eb;
	background: #fff;
	border-radius: 12px;
	font-size: 14px;
	cursor: pointer;
}

/* ===== Tabs & Actions ===== */
.row {
	display: flex;
	align-items: center;
	justify-content: space-between;
	gap: 12px;
	margin: 8px 0 22px;
	flex-wrap: wrap;
}

.tabs {
	display: flex;
	gap: 18px;
	flex-wrap: wrap;
}

.tab {
	font-size: 14px;
	color: #374151;
	padding: 10px 16px;
	border-radius: 999px;
	border: 1px solid transparent;
	transition: .15s;
}

.tab:hover, .tab--active:hover {
	background: #B9761A; /* 호버 배경색 */
	border-color: #e6e8eb; /* 호버 테두리색 */
	color: #374151; /* 호버 글자색 */
}

.actions {
	display: flex;
	gap: 10px;
	margin-left: auto;
}

.btn-outline, .btn-brand {
	height: 40px;
	padding: 0 14px;
	border-radius: 10px;
	font-size: 14px;
	border: 1px solid #e6e8eb;
	background: #fff;
	cursor: pointer;
}

.btn-brand {
	background: #b9761a;
	color: #fff;
	border-color: #b9761a;
}

.btn-brand:hover {
	background: #9e6617;
	border-color: #9e6617;
}
/* ====== Community Toolbar — END ====== */

/* ===== Card ===== */
.card {
	background: #fff;
	border: 1px solid #e6e8eb;
	border-radius: 14px;
	box-shadow: 0 1px 1px rgba(16, 24, 40, .04), 0 2px 6px
		rgba(16, 24, 40, .06);
	padding: 18px;
	margin: 16px 0 22px;
}

.card-head {
	display: flex;
	align-items: center;
	justify-content: space-between;
}

.author {
	display: flex;
	align-items: center;
	gap: 12px;
}

.avatar {
	width: 40px;
	height: 40px;
	border-radius: 50%;
	overflow: hidden;
	background: #ddd;
	flex: 0 0 40px;
}

.avatar img {
	width: 100%;
	height: 100%;
	object-fit: cover;
	display: block;
}

.who {
	display: flex;
	align-items: center;
	gap: 8px;
}

.name {
	font-weight: 700;
}

.badge {
	font-size: 12px;
	color: #fff;
	background: #9aa1aa;
	padding: 2px 8px;
	border-radius: 999px;
}

.time {
	font-size: 12px;
	color: #6b7280;
	margin-top: 2px;
}

.more {
	color: #9aa1aa;
	font-size: 22px;
	line-height: 1;
	padding: 6px 8px;
	cursor: pointer;
}

.title2 {
	font-size: 26px;
	font-weight: 800;
	margin: 12px 0 14px;
}

.thumb {
	width: 100%;
	height: 300px;
	border-radius: 12px;
	border: 1px solid #e6e8eb;
	background: #e7eaee center/cover no-repeat;
}

.content {
	font-size: 14px;
	color: #4b5563;
	line-height: 1.8;
	padding: 14px 2px 8px;
}

.divider {
	height: 1px;
	background: #e6e8eb;
	margin: 8px 0 4px;
}

.stats {
	display: flex;
	align-items: center;
	gap: 22px;
	color: #6b7280;
	font-size: 14px;
	padding: 8px 2px 2px;
}

.stat {
	display: inline-flex;
	align-items: center;
	gap: 6px;
}

.stat svg {
	width: 18px;
	height: 18px;
	opacity: .8;
}

/* ===== Pagination ===== */
.pagination {
	display: flex;
	align-items: center;
	gap: 10px;
	justify-content: center;
	padding: 16px 0 0;
}

.page-nav {
	display: inline-flex;
	align-items: center;
	gap: 6px;
	color: #6b7280;
	font-size: 14px;
}

.page {
	min-width: 36px;
	height: 36px;
	padding: 0 10px;
	border-radius: 10px;
	display: inline-flex;
	align-items: center;
	justify-content: center;
	border: 1px solid transparent;
	font-weight: 600;
}

.page--current {
	background: #b9761a;
	color: #fff;
}

.page:hover {
	border-color: #e6e8eb;
	background: #fff;
}

/* ===== Responsive ===== */
@media ( max-width : 640px) {
	.thumb {
		height: 220px;
	}
	.title {
		font-size: 28px;
	}
</style>
<div class="container">
<h1 class="title">커뮤니티</h1>

		<div class="searchbar">
			<div class="field">
				<svg class="icon" viewBox="0 0 24 24" fill="none"
					stroke="currentColor" stroke-width="2">
          <circle cx="11" cy="11" r="7"></circle>
          <path d="m20 20-3.5-3.5"></path>
        </svg>
				<input type="text" placeholder="제목 또는 닉네임으로 검색" />
			</div>
			<button class="btn">검색</button>
		</div>

		<div class="row">
			<nav class="tabs">
				<a class="tab tab--active" href="#">내 반려동물을 자랑하는 게시판</a> <a
					class="tab" href="#">펫 관련 알바 구하기 게시판</a> <a class="tab" href="#">반려동물
					키우는 팁 게시판</a> <a class="tab" href="#">실종 동물을 찾아주세요 게시판</a>
			</nav>
			<div class="actions">
				<button class="btn-outline">전체보기</button>
				<button class="btn-brand">새 글 작성</button>
			</div>
		</div>




</div>
</body>
</html>