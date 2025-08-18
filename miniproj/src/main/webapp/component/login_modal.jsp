<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="/miniproj/resource/css/common.css" rel="stylesheet">
	<link href="/miniproj/resource/css/bootstrap.min.css" rel="stylesheet">
<style>
.modal-header {
	display: flex !important;
	flex-direction: column;
	color: #a75d00;
}

.modal-body {
	color: #a75d00;
}

.modal-footer {
	display: flex !important;
	flex-direction: column;
}

.modal-backdrop.show {
	background-color: rgba(0, 0, 0, 0.2) !important; 
}
</style>

</head>
<body>
	<!-- The Modal -->
	<form action="signupProcessServlet.java" method="post">
		<div class="modal fade" id="loginModal">
			<div class="modal-dialog">
				<div class="modal-content">

					<!-- Modal Header -->
					<div class="modal-header">
						<button type="button" class="btn-close" data-bs-dismiss="modal"></button>
						<h4 class="modal-title">로그인</h4>
					</div>

					<!-- Modal body -->
					<div class="modal-body">
						<div class="mb-3">
							<label class="form-label">이메일</label> <input type="email"
								name="username" class="form-control"
								placeholder="사용자 이메일을 입력하세요" required>
						</div>

						<div class="mb-3">
							<label class="form-label">비밀번호</label> <input type="password"
								name="password" class="form-control" placeholder="비밀번호를 입력하세요"
								required>
						</div>
					</div>

					<!-- Modal footer -->
					<div class="modal-footer">
							<button type="submit" class="btn btn-brown" id="signUp">로그인</button>
							<a href="/miniproj/page/user/forgotPassword.jsp" class="btn w-100">비밀번호를 잊어버렸나요?</a>
					</div>
				</div>
			</div>
		</div>
	</form>

	<!-- script 영역 -->
	<script src="/miniproj/resource/js/bootstrap.bundle.min.js"></script>
</body>
</html>
