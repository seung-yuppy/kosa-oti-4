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
/* ===== Base ===== */
*{box-sizing:border-box}
html,body{height:100%}
body{margin:0;background:#f7f8fa;color:#111322;font-family:system-ui,-apple-system,Segoe UI,Roboto,Pretendard,"Apple SD Gothic Neo","Noto Sans KR",sans-serif;letter-spacing:-.2px}
a{color:inherit;text-decoration:none}
.container{max-width:980px;margin:0 auto;padding:28px 18px 40px}

/* ===== Header ===== */
.title{font-weight:800;font-size:34px;margin:0 0 16px}
.searchbar{display:flex;align-items:center;gap:10px;margin-bottom:12px}
.searchbar .field{position:relative;flex:1}
.searchbar input{width:100%;height:44px;padding:0 12px 0 42px;border:1px solid #e6e8eb;border-radius:12px;background:#fff;outline:none;font-size:14px}
.searchbar .icon{position:absolute;left:12px;top:50%;transform:translateY(-50%);width:18px;height:18px;opacity:.5}
.searchbar .btn{height:44px;padding:0 16px;border:1px solid #e6e8eb;background:#fff;border-radius:12px;font-size:14px;cursor:pointer}

/* ===== Tabs & Actions ===== */
.row{display:flex;align-items:center;justify-content:space-between;gap:12px;margin:8px 0 22px;flex-wrap:wrap}
.tabs{display:flex;gap:18px;flex-wrap:wrap}
.tab{font-size:14px;color:#374151;padding:10px 16px;border-radius:999px;border:1px solid transparent;transition:.15s}
.tab:hover,.tab--active:hover{background:#B9761A;border-color:#e6e8eb;color:#374151}
.tab--active{border-color:#111322}
.actions{display:flex;gap:10px;margin-left:auto}
.btn-outline,.btn-brand{height:40px;padding:0 14px;border-radius:10px;font-size:14px;border:1px solid #e6e8eb;background:#fff;cursor:pointer}
.btn-brand{background:#b9761a;color:#fff;border-color:#b9761a}
.btn-brand:hover{background:#9e6617;border-color:#9e6617}

/* ===== Card ===== */
.card{background:#fff;border:1px solid #e6e8eb;border-radius:14px;box-shadow:0 1px 1px rgba(16,24,40,.04),0 2px 6px rgba(16,24,40,.06);padding:18px;margin:16px 0 22px}
.card-head{display:flex;align-items:center;justify-content:space-between}
.author{display:flex;align-items:center;gap:12px}
.avatar{width:40px;height:40px;border-radius:50%;overflow:hidden;background:#ddd;flex:0 0 40px}
.avatar img{width:100%;height:100%;object-fit:cover;display:block}
.who{display:flex;align-items:center;gap:8px}
.name{font-weight:700}
.badge{font-size:12px;color:#fff;background:#9aa1aa;padding:2px 8px;border-radius:999px}
.time{font-size:12px;color:#6b7280;margin-top:2px}
.more{color:#9aa1aa;font-size:22px;line-height:1;padding:6px 8px;cursor:pointer}
.title2{font-size:26px;font-weight:800;margin:12px 0 14px}
.thumb{width:100%;height:300px;border-radius:12px;border:1px solid #e6e8eb;background:#e7eaee center/cover no-repeat}
.content{font-size:14px;color:#4b5563;line-height:1.8;padding:14px 2px 8px}
.divider{height:1px;background:#e6e8eb;margin:8px 0 4px}
.stats{display:flex;align-items:center;gap:22px;color:#6b7280;font-size:14px;padding:8px 2px 2px}
.stat{display:inline-flex;align-items:center;gap:6px}
.stat svg{width:18px;height:18px;opacity:.8}

/* ===== Pagination ===== */
.pagination{display:flex;align-items:center;gap:10px;justify-content:center;padding:16px 0 0}
.page-nav{display:inline-flex;align-items:center;gap:6px;color:#6b7280;font-size:14px}
.page{min-width:36px;height:36px;padding:0 10px;border-radius:10px;display:inline-flex;align-items:center;justify-content:center;border:1px solid transparent;font-weight:600}
.page--current{background:#b9761a;color:#fff}
.page:hover{border-color:#e6e8eb;background:#fff}

/* ===== Responsive ===== */
@media (max-width:640px){.thumb{height:220px}.title{font-size:28px}}
</style>

<div class="container">
  <h1 class="title">커뮤니티</h1>

  <!-- 검색 -->
  <div class="searchbar">
    <div class="field">
      <svg class="icon" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><circle cx="11" cy="11" r="7"/><path d="m20 20-3.5-3.5"/></svg>
      <input type="text" placeholder="제목 또는 닉네임으로 검색" />
    </div>
    <button class="btn">검색</button>
  </div>

  <!-- 탭 + 액션 -->
  <div class="row">
    <nav class="tabs" id="tabs">
      <a class="tab tab--active" href="#">내 반려동물을 자랑하는 게시판</a>
      <a class="tab" href="#">펫 관련 알바 구하기 게시판</a>
      <a class="tab" href="#">반려동물 키우는 팁 게시판</a>
      <a class="tab" href="#">실종 동물을 찾아주세요 게시판</a>
    </nav>
    <div class="actions">
      <button class="btn-outline">전체보기</button>
      <button class="btn-brand">새 글 작성</button>
    </div>
  </div>

  <!-- 카드 (더미 1개) -->
  <article class="card">
    <header class="card-head">
      <div class="author">
        <div class="avatar"><img src="https://picsum.photos/80/80?grayscale" alt=""></div>
        <div>
          <div class="who"><span class="name">김하나</span> <span class="badge">일반회원</span></div>
          <div class="time">2시간 전</div>
        </div>
      </div>
      <div class="more">⋯</div>
    </header>

    <h2 class="title2">강아지 산책 시 주의할 점!</h2>
    <div class="thumb" style="background-image:url('https://images.unsplash.com/photo-1534361960057-19889db9621e?q=80&w=1200&auto=format&fit=crop');"></div>
    <div class="content">요즘 날씨가 너무 좋아서 강아지 산책하기 딱 좋은데요! 산책할 때 꼭 챙겨야 할 준비물과 주의할 점들을 공유합니다. 배변 봉투, 물, 그리고 목줄은 필수겠죠? 혹시 놓치기 쉬운 점이 있을까요?</div>

    <div class="divider"></div>
    <div class="stats">
      <div class="stat">
        <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M20.8 4.6a5.5 5.5 0 0 0-7.8 0L12 5.6l-1-1a5.5 5.5 0 0 0-7.8 7.8l1 1 7.8 7.6 7.8-7.6 1-1a5.5 5.5 0 0 0 0-7.8z"/></svg>
        <span>1,234</span>
      </div>
      <div class="stat">
        <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M21 12a8 8 0 1 1-3-6.3L21 4l-1.7 4.6A8 8 0 0 1 21 12z"/></svg>
        <span>45</span>
      </div>
      <div class="stat">
        <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M1 12s4-7 11-7 11 7 11 7-4 7-11 7-11-7-11-7z"/><circle cx="12" cy="12" r="3"/></svg>
        <span>210</span>
      </div>
    </div>
  </article>

  <!-- 페이지네이션 -->
  <nav class="pagination" aria-label="페이지">
    <span class="page-nav">
      <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M15 18 9 12l6-6"/></svg>
      Previous
    </span>
    <span class="page page--current">1</span>
    <a class="page" href="#">2</a>
    <a class="page" href="#">3</a>
    <a class="page" href="#">4</a>
    <a class="page" href="#">5</a>
    <span class="page-nav">
      Next
      <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="m9 18 6-6-6-6"/></svg>
    </span>
  </nav>
</div>
</body>
</html>