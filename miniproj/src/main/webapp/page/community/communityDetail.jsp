<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/miniproj/resource/css/bootstrap.min.css" rel="stylesheet">
<link href="/miniproj/resource/css/common.css" rel="stylesheet">
</head>
<style>
.nav-pills {
	display: flex;
	flex-wrap: nowrap; /* 줄바꿈 방지 (필요시 wrap으로 변경 가능) */
	width: 100%;
}

.nav-pills .tab {
	flex: 1 1 0; /* 균등 분배 */
	text-align: center;
	font-size: 14px;
	color: #374151;
	padding: 10px 16px;
	border-radius: 999px;
	border: 1px solid transparent;
	transition: .15s;
	background: transparent; /* 기본 배경 없음 (원본과 동일 느낌) */
}

/* Hover: 원본과 동일 */
.nav-pills .tab:hover, .nav-pills .tab.active:hover {
	background: #B9761A; /* 호버 배경색 */
	border-color: #e6e8eb; /* 호버 테두리색 */
	color: #374151; /* 호버 글자색 */
}

/* Bootstrap의 기본 active(파란 배경) 제거 → 원본과 같은 '평상시' 스타일 유지 */
.nav-pills .tab.active {
	background: transparent !important;
	color: #374151 !important;
	border-color: transparent !important;
}

/* 접근성: 포커스 링은 유지하되 형태만 살짝 정리 */
.nav-pills .tab:focus {
	outline: none;
	box-shadow: 0 0 0 0.2rem rgba(185, 118, 26, 0.15);
}

/* ===== 상세 공통(추가) ===== */
.text-muted-700 {
	color: #4b5563;
}

.badge-role {
	background: #f3f4f6;
	color: #6b7280;
	border: 1px solid #e5e7eb;
}

.btn-outline-gray {
	border-color: #e5e7eb;
	color: #374151;
	background: #fff;
}

.btn-outline-gray:hover {
	background: #f9fafb;
	border-color: #d1d5db;
	color: #111827;
}

.btn-brown {
	background: #B9761A;
	color: #fff;
	border: 1px solid #B9761A;
}

.btn-brown:hover {
	filter: brightness(0.95);
	color: #fff;
}

.icon-16 {
	width: 16px;
	height: 16px;
}

.rounded-12 {
	border-radius: 12px;
}

.post-body p {
	margin-bottom: 1rem;
}

.count-dot::before {
	content: "•";
	margin: 0 .5rem;
	color: #9ca3af;
}

.post-cover {
	width: 100%;
	height: auto;
	border: 1px solid #e6e8eb;
	border-radius: 12px;
}

.divider {
	height: 1px;
	background: #e5e7eb;
}

.avatar-40 {
	width: 40px;
	height: 40px;
	border-radius: 50%;
	object-fit: cover;
}
</style>
<body>
<!-- 헤더 영역 -->
	<%@ include file="/component/header.jsp" %>
	<div class="container py-5" style="max-width: 980px;">
		<!-- Title -->
		<h1 class="fw-bold fs-1 mb-4">커뮤니티</h1>

		<!-- Searchbar -->
		<div class="d-flex align-items-center gap-2 mb-3 flex-wrap">
			<div class="position-relative flex-grow-1">
				<input type="text" class="form-control ps-5"
					placeholder="제목 또는 닉네임으로 검색">
				<svg
					class="position-absolute top-50 start-0 translate-middle-y ms-3 opacity-50"
					width="18" height="18" viewBox="0 0 24 24" fill="none"
					stroke="currentColor" stroke-width="2">
        <circle cx="11" cy="11" r="7"></circle>
        <path d="m20 20-3.5-3.5"></path>
      </svg>
			</div>
			<button class="btn btn-outline-secondary">검색</button>
		</div>

		<!-- Tabs & Actions -->
		<div
			class="d-flex flex-wrap align-items-center justify-content-between mb-4 gap-2">
			<nav class="nav nav-pills gap-2">
				<a href="#" class="nav-link rounded-pill tab">내 반려동물을 자랑하는 게시판</a> <a
					href="#" class="nav-link rounded-pill tab">펫 관련 알바 구하기 게시판</a> <a
					href="#" class="nav-link rounded-pill tab">반려동물 키우는 팁 게시판</a> <a
					href="#" class="nav-link rounded-pill tab">실종 동물을 찾아주세요 게시판</a>
			</nav>
			<div class="d-flex gap-2 ms-auto">
				<button class="btn btn-outline-secondary">전체보기</button>
				<button class="btn btn-brown">새 글 작성</button>
			</div>
		</div>

		<!-- ===== 상세 컨텐츠 START ===== -->
		<section class="bg-white rounded-12 border p-3 p-sm-4 mb-5">

			<!-- 작성자/메타 + 액션 -->
			<div class="d-flex align-items-center justify-content-between">
				<div class="d-flex align-items-center gap-3">
					<img class="avatar-40"
						src="${empty post.authorAvatarUrl ? pageContext.request.contextPath.concat('/image/img_user.png') : post.authorAvatarUrl}"
						alt="작성자">
					<div>
						<div class="d-flex align-items-center gap-2">
							<strong class="me-1"><c:out value="${post.authorName}" /></strong>

						</div>
						<small class="text-muted"> <fmt:formatDate
								value="${post.createdAt}" pattern="yyyy.MM.dd HH:mm" /> <c:if
								test="${post.updatedAt != null}">
								<span class="count-dot"></span>수정됨 <fmt:formatDate
									value="${post.updatedAt}" pattern="yyyy.MM.dd HH:mm" />
							</c:if>
						</small>
					</div>
				</div>

				<div class="d-flex gap-2">
					<c:if test="${canEdit}">
						<a class="btn btn-outline-gray btn-sm"
							href="/community/${post.id}/edit">수정하기</a>
					</c:if>
					<c:if test="${canDelete}">
						<form method="post" action="/community/${post.id}/delete"
							onsubmit="return confirm('정말 삭제하시겠습니까?');">
							<button type="submit" class="btn btn-outline-gray btn-sm">삭제하기</button>
						</form>
					</c:if>
				</div>
			</div>

			<!-- 제목 -->
			<h2 class="post-title fw-bold fs-3 mt-3 mb-3">
				<c:out value="${post.title}" />
			</h2>

			<!-- 대표 이미지 -->
			<img class="post-cover mb-4"
				src="${empty post.coverUrl ? 
        'https://images.unsplash.com/photo-1534361960057-19889db9621e?q=80&amp;w=1200&amp;auto=format&amp;fit=crop' 
        : post.coverUrl}"
				alt="게시글 이미지">

			<!-- 본문 -->
			<div class="post-body text-muted-700" style="line-height: 1.85;">
				<c:forEach var="para" items="${post.paragraphs}">
					<p>
						<c:out value="${para}" />
					</p>
				</c:forEach>
				<!-- 단일 필드로 저장했다면 -->
				<c:if test="${empty post.paragraphs}">
					<pre class="mb-0"
						style="white-space: pre-wrap; font-family: inherit;">
${empty post.content ? '요즘 날씨가 너무 좋아서 강아지 산책하기 딱 좋은데요! 산책할 때 꼭 챙겨야 할 준비물과 주의할 점들을 공유합니다. 배변 봉투, 물, 그리고 목줄은 필수겠죠? 혹시 놓치기 쉬운 점이 있을까요?' : post.content}
  </pre>
				</c:if>
			</div>

			<!-- 구분선 -->
			<div class="my-4 divider"></div>

			<!-- 하단 메타(조회/댓글/좋아요) -->
			<div class="d-flex align-items-center gap-3 flex-wrap text-muted">
				<!-- 조회수 -->
				<span class="d-inline-flex align-items-center gap-1"> <svg
						class="icon-16" viewBox="0 0 24 24" fill="none"
						stroke="currentColor" stroke-width="1.8">
          <path d="M1 12s4-7 11-7 11 7 11 7-4 7-11 7-11-7-11-7Z"></path>
          <circle cx="12" cy="12" r="3"></circle>
        </svg> <span><c:out value="${post.viewCount}" /></span>
				</span>

				<!-- 댓글수 -->
				<span class="d-inline-flex align-items-center gap-1"> <svg
						class="icon-16" viewBox="0 0 24 24" fill="none"
						stroke="currentColor" stroke-width="1.8">
          <path
							d="M21 15a4 4 0 0 1-4 4H7l-4 4V7a4 4 0 0 1 4-4h10a4 4 0 0 1 4 4v8Z"></path>
        </svg> <span><c:out value="${post.commentCount}" /></span>
				</span>

				<!-- 좋아요 -->
				<form method="post" action="/community/${post.id}/like"
					class="d-inline-flex align-items-center gap-1">
					<button type="submit"
						class="btn btn-sm btn-outline-gray d-inline-flex align-items-center gap-1">
						<svg class="icon-16" viewBox="0 0 24 24" fill="none"
							stroke="currentColor" stroke-width="1.8">
            <path
								d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 1 0-7.78 7.78L12 21.23l8.84-8.84a5.5 5.5 0 0 0 0-7.78Z"></path>
          </svg>
						<span><c:out value="${post.likeCount}" /></span>
					</button>
				</form>
			</div>
		</section>
		<!-- ===== 상세 컨텐츠 END ===== -->

		<!-- ===== 댓글 영역(옵션) ===== -->
		<section class="bg-white rounded-12 border p-3 p-sm-4">
			<h3 class="fs-5 mb-3">
				댓글 <span class="text-muted">(<c:out
						value="${post.commentCount}" />)
				</span>
			</h3>

			<!-- 댓글 작성 -->
			<c:if test="${isAuthenticated}">
				<form class="mb-4" method="post"
					action="/community/${post.id}/comments">
					<div class="mb-2">
						<textarea name="content" class="form-control" rows="3"
							placeholder="댓글을 남겨보세요"></textarea>
					</div>
					<div class="text-end">
						<button type="submit" class="btn btn-brown btn-sm">댓글 등록</button>
					</div>
				</form>
			</c:if>

			<!-- 댓글 리스트 -->
			<div class="list-group list-group-flush">
				<c:forEach var="cmt" items="${post.comments}">
					<div class="list-group-item px-0">
						<div class="d-flex align-items-start gap-3">
							<img class="avatar-40"
						src="${empty post.authorAvatarUrl ? pageContext.request.contextPath.concat('/image/img_user.png') : post.authorAvatarUrl}"
						alt="작성자">
							<div class="flex-grow-1">
								<div class="d-flex align-items-center gap-2">
									<strong><c:out value="${cmt.authorName}" /></strong> <small
										class="text-muted"><fmt:formatDate
											value="${cmt.createdAt}" pattern="yyyy.MM.dd HH:mm" /></small>
								</div>
								<div class="mt-1">
									<c:out value="${cmt.content}" />
								</div>
								<c:if test="${cmt.mine}">
									<div class="mt-2 d-flex gap-2">
										<a class="btn btn-outline-gray btn-sm"
											href="/community/${post.id}/comments/${cmt.id}/edit">수정</a>
										<form method="post"
											action="/community/${post.id}/comments/${cmt.id}/delete"
											onsubmit="return confirm('삭제하시겠어요?');">
											<button type="submit" class="btn btn-outline-gray btn-sm">삭제</button>
										</form>
									</div>
								</c:if>
							</div>
						</div>
					</div>
				</c:forEach>

				<c:if test="${empty post.comments}">
					<div class="text-center text-muted py-4">첫 댓글을 남겨보세요.</div>
				</c:if>
			</div>
		</section>
		<!-- ===== 댓글 영역 END ===== -->

		<!-- 목록/이전다음 -->
		<div class="d-flex justify-content-between align-items-center mt-4">
			<a href="/community" class="btn btn-outline-gray">목록으로</a>
			<div class="d-flex gap-2">
				<c:if test="${prevPost != null}">
					<a class="btn btn-outline-gray" href="/community/${prevPost.id}">이전
						글</a>
				</c:if>
				<c:if test="${nextPost != null}">
					<a class="btn btn-outline-gray" href="/community/${nextPost.id}">다음
						글</a>
				</c:if>
			</div>
		</div>

	</div>



	</div>
	<!-- footer 영역 -->
	<%@ include file="/component/footer.jsp" %>
</body>
</html>