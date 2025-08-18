<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
    String nicknameValue = (String) request.getAttribute("nickname");
    if (nickname == null) {
        nickname = "";
    }
%>
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
	<form action="..." method="post">
		<div class="modal fade" id="editProfileModal">
			<div class="modal-dialog">
				<div class="modal-content">

					<!-- Modal Header -->
					<div class="modal-header">
						<button type="button" class="btn-close" data-bs-dismiss="modal"></button>
						<h4 class="modal-title">회원정보 수정</h4>
					</div>

					<!-- Modal body -->
					<div class="d-grid mb-3" style="margin: 20px;">
						<div class="mb-3">
							<label class="form-label">사용자 이메일</label> <input type="email"
								name="username" class="form-control mb-2"
								placeholder="사용자 이메일을 입력하세요" required>
							<button type="button" class="btn btn-brown mb-2"
								id="certificate_mail" data-bs-toggle="popover" title="인증메일 전송완료"
								data-bs-content="메일함을 확인해주세요! 도착하지 않았다면 주소를 다시 한번 확인해 주세요.">인증메일
								보내기</button>
							<input type="text" name="code" class="form-control mb-2"
								placeholder="이메일로 도착한 코드를 입력하세요" required>
							<button type="button" class="btn btn-brown" id="certificate">인증</button>
						</div>

						<div class="mb-3">
							<label class="form-label">비밀번호</label> <input type="password"
								name="password" class="form-control" placeholder="비밀번호를 입력하세요"
								required>
						</div>

						<div class="mb-3">
							<label class="form-label">닉네임</label> <input type="text"
								name="nickname" class="form-control" value="<%= nicknameValue %>"
								placeholder="사용할 닉네임을 입력하세요" required>
						</div>

						<div class="mb-3">
							<label class="form-label">주소</label>
							<div class="input-group mb-2">
								<input type="text" id="sample2_postcode" name="postcode"
									class="form-control" placeholder="우편번호" readonly>
								<button type="button" class="btn btn-outline-secondary"
									onclick="sample2_execDaumPostcode()">우편번호 찾기</button>
							</div>
							<input type="text" id="sample2_address" name="address"
								class="form-control mb-2" placeholder="주소" readonly> <input
								type="text" id="sample2_detailAddress" name="detailAddress"
								class="form-control mb-2" placeholder="상세주소"> <input
								type="text" id="sample2_extraAddress" name="extraAddress"
								class="form-control" placeholder="참고항목" readonly>
						</div>

						<div class="mb-3">
							<label class="form-label d-block">반려동물 소유 여부</label>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="hasPet"
									id="yes" value="yes" required> <label
									class="form-check-label" for="yes">예</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="hasPet"
									id="no" value="no"> <label class="form-check-label"
									for="no">아니오</label>
							</div>
						</div>

						<div class="d-grid">
							<button type="submit" class="btn btn-brown" id="signUp">회원정보
								수정</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</form>

	<!-- script 영역 -->
	<script src="/miniproj/resource/js/bootstrap.bundle.min.js"></script>
	<!-- 다음 주소 API 관련 요소 -->
	<div id="layer">
		<img src="//t1.daumcdn.net/postcode/resource/images/close.png"
			id="btnCloseLayer" onclick="closeDaumPostcode()" alt="닫기 버튼">
	</div>

	<!-- 다음 주소 API -->
	<script
		src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
    var element_layer = document.getElementById('layer');

    function closeDaumPostcode() {
        element_layer.style.display = 'none';
    }

    function sample2_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                var addr = '';
                var extraAddr = '';

                if (data.userSelectedType === 'R') {
                    addr = data.roadAddress;
                } else {
                    addr = data.jibunAddress;
                }

                if(data.userSelectedType === 'R'){
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    document.getElementById("sample2_extraAddress").value = extraAddr;
                } else {
                    document.getElementById("sample2_extraAddress").value = '';
                }

                document.getElementById('sample2_postcode').value = data.zonecode;
                document.getElementById("sample2_address").value = addr;
                document.getElementById("sample2_detailAddress").focus();

                element_layer.style.display = 'none';
            },
            width : '100%',
            height : '100%',
            maxSuggestItems : 5
        }).embed(element_layer);

        element_layer.style.display = 'block';
        initLayerPosition();
    }

    function initLayerPosition(){
        var width = 350;
        var height = 400;
        var borderWidth = 5;

        element_layer.style.width = width + 'px';
        element_layer.style.height = height + 'px';
        element_layer.style.left = (((window.innerWidth || document.documentElement.clientWidth) - width)/2 - borderWidth) + 'px';
        element_layer.style.top = (((window.innerHeight || document.documentElement.clientHeight) - height)/2 - borderWidth) + 'px';
    }
    
    var popoverTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="popover"]'))
    var popoverList = popoverTriggerList.map(function (popoverTriggerEl) {
      return new bootstrap.Popover(popoverTriggerEl)
    })
</script>
</body>
</html>
