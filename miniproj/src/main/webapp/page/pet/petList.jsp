<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>내 주변 펫 찾기</title>
	<link href="/miniproj/resource/css/common.css" rel="stylesheet">
	<link href="/miniproj/resource/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
    <style>
        body {
            background-color: #f8f9fa;
        }
        .search-card {
            max-width: 1320px;
            margin: 0 auto;
            height: 410px;
        }
        .rounded {
	        	width: 100%;
	        	height: 410px;
        }
        .swiper-button-next {
            background: url(/miniproj/image/ico_next.png) no-repeat;
        		background-size: 50% auto;
   			background-position: center;

			&::after {
				display:none;
			}
        }
        .swiper-button-prev {
        		background: url(/miniproj/image/ico_prev.png) no-repeat;
        		background-size: 50% auto;
   			background-position: center;

			&::after {
				display:none;
			}
        }
    </style>
</head>
<body>
	<!-- 헤더 영역 -->
	<%@ include file="/component/header.jsp" %>
	<!-- 지도 영역 -->
    <main class="container my-5 p-relative">
        <section class="search-card">
            <div class="card p-4 shadow-sm card-border">
                <h3 class="text-center mb-4 fw-bold">내 주변 펫 찾기 🗺️</h3>
                <div class="d-flex">
                		<div id="map" class="rounded map"></div>
                		<div class="swiper swiper-container">
					    <div class="swiper-wrapper">
					    <%
					        for (int i = 0; i < 3; i++) {
					    %>
					        <div class="swiper-slide">
					            <jsp:include page="/component/myPetCard.jsp"></jsp:include>
					        </div>
					    <%
					        }
					    %>
					    </div>
					    <div class="swiper-button-next"></div>
					    <div class="swiper-button-prev"></div>
					</div>
                </div>
            </div>
        </section>
	<!-- 펫 리스트 영역 -->
        <section class="mt-10 pt-4">
            <div class="row row-cols-1 row-cols-md-2 row-cols-lg-4 g-4">
			<%
				for (int i = 0; i < 5; i++) {
			%>
					<jsp:include page="/component/petCard.jsp"></jsp:include> 
			<%
				}
			%>
            </div>
        </section>
        <button type="button" class="card-like-btn p-absolute">
        		<img src="/miniproj/image/ico_chat.png" class="chat-btn">
        </button>
    </main>
	<!-- 헤더 영역 -->
	<%@ include file="/component/footer.jsp" %>
   	<!-- script 영역 -->
   	<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
	<script src="/miniproj/resource/js/bootstrap.bundle.min.js"></script>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c54be34b2a7cdb69fed5bbd7c59a90bb"></script>
	<script>
		/* 스와이퍼 */
	    const swiper = new Swiper('.swiper-container', {
	        // 옵션
	        loop: true, // 무한 루프
	
	        // 네비게이션 버튼
	        navigation: {
	            nextEl: '.swiper-button-next',
	            prevEl: '.swiper-button-prev',
	        },
	    });
		
		/* 카카오 맵 */
	    var mapContainer = document.getElementById('map'); // 지도를 표시할 div
	    var defaultPosition = new kakao.maps.LatLng(37.566826, 126.9786567); // 기본 위치 (서울시청)
	
	    var mapOption = { 
	        center: defaultPosition, // 지도의 기본 중심좌표
	        level: 3 
	    };
	
	    // 지도를 생성합니다
	    var map = new kakao.maps.Map(mapContainer, mapOption);
	
	    // HTML5의 geolocation으로 사용할 수 있는지 확인합니다 
	    if (navigator.geolocation) {
	        
	        // GeoLocation을 이용해서 접속 위치를 얻어옵니다
	        navigator.geolocation.getCurrentPosition(function(position) {
	            
	            var lat = position.coords.latitude, // 위도
	               	lon = position.coords.longitude; // 경도
	            
	            var locPosition = new kakao.maps.LatLng(lat, lon); // 현재 위치를 기반으로 LatLng 객체 생성
	            
	            // 지도 중심을 현재 위치로 이동시킵니다
	            map.setCenter(locPosition);
	            
	            // 현재 위치에 마커를 생성합니다
	            var marker = new kakao.maps.Marker({
	                map: map,
	                position: locPosition
	            });
	            
	        }, function(error) {
	            // 위치 정보 얻기를 실패했을 때 처리 (사용자가 거부 등)
	            console.error("Geolocation error: ", error);
	            // 실패 시 기본 위치에 마커를 표시합니다.
	            var marker = new kakao.maps.Marker({
	                map: map,
	                position: defaultPosition
	            });
	        });
	        
	    } else {
	        // HTML5의 GeoLocation을 사용할 수 없을 때 fallback 처리
	        console.log("geolocation을 사용할 수 없어요..")
	        // 기본 위치에 마커를 표시합니다.
	        var marker = new kakao.maps.Marker({
	            map: map,
	            position: defaultPosition
	        });
	    }
	</script>
</body>
</html>