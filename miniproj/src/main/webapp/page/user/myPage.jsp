<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%
    // 예시용 하드코딩 데이터
    String name = "김민준";
    String address = "서울특별시 강남구 테헤란로 123";
    String nickname = "민민";
    boolean hasPet = true;
%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>프로필</title>
    <!-- Bootstrap 5 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

    <style>
        body {
            font-family: 'Pretendard', sans-serif;
            padding: 40px;
            background-color: #f9f9f9;
        }
        .brown-btn {
            background-color: #8B4513;
            color: white;
        }
        .brown-btn:hover {
            background-color: #A0522D;
            color: white;
        }
        .section {
            margin-bottom: 50px;
        }
        .card img {
            border-radius: 10px;
        }
        .nav-tabs .nav-link.active {
            background-color: #8B4513 !important;
            color: white !important;
        }
        .nav-tabs .nav-link {
            background-color: #d3bfa8;
            color: white;
        }
    </style>
</head>
<body>

<!-- 프로필 정보 -->
<div class="section">
    <h3>프로필 정보</h3>
    <form action="updateProfile.jsp" method="post" class="mt-3">
        <div class="mb-3">
            <label class="form-label">이름</label>
            <input type="text" name="name" class="form-control" value="<%= name %>">
        </div>
        <div class="mb-3">
            <label class="form-label">주소</label>
            <input type="text" name="address" class="form-control" value="<%= address %>">
        </div>
        <div class="mb-3">
            <label class="form-label">닉네임</label>
            <input type="text" name="nickname" class="form-control" value="<%= nickname %>">
        </div>
        <div class="mb-3">
            <label class="form-label d-block">반려동물 소유 여부</label>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="hasPet" value="yes" <%= hasPet ? "checked" : "" %>>
                <label class="form-check-label">예</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="hasPet" value="no" <%= !hasPet ? "checked" : "" %>>
                <label class="form-check-label">아니요</label>
            </div>
        </div>
        <button type="submit" class="btn brown-btn">프로필 수정</button>
    </form>
</div>

<!-- 관심 입양 동물 -->
<div class="section">
    <h3>내가 관심 있는 입양 동물</h3>
    <div class="row row-cols-1 row-cols-md-4 g-4 mt-3">
        <div class="col">
            <div class="card h-100">
                <img src="https://via.placeholder.com/200x150" class="card-img-top" alt="럭키">
                <div class="card-body">
                    <h5 class="card-title">럭키</h5>
                    <p class="card-text">골든 리트리버</p>
                    <a href="#" class="btn btn-outline-secondary btn-sm">자세히 보기</a>
                </div>
            </div>
        </div>
        <div class="col">
            <div class="card h-100">
                <img src="https://via.placeholder.com/200x150" class="card-img-top" alt="나비">
                <div class="card-body">
                    <h5 class="card-title">나비</h5>
                    <p class="card-text">코리안 숏헤어</p>
                    <a href="#" class="btn btn-outline-secondary btn-sm">자세히 보기</a>
                </div>
            </div>
        </div>
        <div class="col">
            <div class="card h-100">
                <img src="https://via.placeholder.com/200x150" class="card-img-top" alt="뽀삐">
                <div class="card-body">
                    <h5 class="card-title">뽀삐</h5>
                    <p class="card-text">푸들</p>
                    <a href="#" class="btn btn-outline-secondary btn-sm">자세히 보기</a>
                </div>
            </div>
        </div>
        <div class="col">
            <div class="card h-100">
                <img src="https://via.placeholder.com/200x150" class="card-img-top" alt="두부">
                <div class="card-body">
                    <h5 class="card-title">두부</h5>
                    <p class="card-text">시바견</p>
                    <a href="#" class="btn btn-outline-secondary btn-sm">자세히 보기</a>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- 커뮤니티 활동 (탭 전환) -->
<div class="section">
    <h3 class="mb-3">내 커뮤니티 활동</h3>

    <!-- 탭 버튼 -->
    <ul class="nav nav-tabs" id="activityTabs">
        <li class="nav-item">
            <button class="nav-link active" id="posts-tab" data-bs-toggle="tab" data-bs-target="#posts" type="button"
                    role="tab">게시글</button>
        </li>
        <li class="nav-item">
            <button class="nav-link" id="comments-tab" data-bs-toggle="tab" data-bs-target="#comments" type="button"
                    role="tab">댓글</button>
        </li>
    </ul>

    <!-- 탭 콘텐츠 -->
    <div class="tab-content border border-top-0 p-3" id="activityTabsContent">
        <!-- 게시글 -->
        <div class="tab-pane fade show active" id="posts" role="tabpanel">
            <div class="mb-3">
                <strong>이서연</strong> <small class="text-muted">· 2시간 전</small>
                <p>새로운 입양 가이드라인에 대한 의견을 나누고 싶습니다. 최근 변경된 부분이 있는데, 공유해주신 분 계신가요?</p>
                <span>❤️ 15 | 💬 3</span>
            </div>
            <div class="mb-3">
                <strong>박지훈</strong> <small class="text-muted">· 1분 전</small>
                <p>저희 집 고양이 뿌잉이가 새로운 장난감을 너무 좋아하네요! 고양이 장난감 추천 좀 해주세요.</p>
                <span>❤️ 28 | 💬 7</span>
            </div>
        </div>

        <!-- 댓글 -->
        <div class="tab-pane fade" id="comments" role="tabpanel">
            <div class="mb-3">
                <strong>김민준</strong> <small class="text-muted">· 30분 전</small>
                <p><em>이서연</em>님의 글에 댓글: 저도 같은 의견입니다. 새로운 기준 좋네요.</p>
            </div>
            <div class="mb-3">
                <strong>김민준</strong> <small class="text-muted">· 1일 전</small>
                <p><em>정하윤</em>님의 글에 댓글: 다음 봉사활동도 같이 가요!</p>
            </div>
        </div>
    </div>
</div>

</body>
</html>
