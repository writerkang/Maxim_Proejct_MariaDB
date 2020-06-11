<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      

<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<!DOCTYPE html>
<html lang="ko">
<script src="https://use.fontawesome.com/afbd8941a0.js"></script>
<head>
	<meta charset="utf-8">
	<meta name="viewport"content="width=device-width,initial-scale=1">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
	<title>Hello Sysout!</title>
	<link rel="stylesheet" href="CSS/bootstrap.css">
	<link rel="stylesheet" href="CSS/index.css">
	<link rel="stylesheet" href="CSS/site.css">
	<link rel="stylesheet" href="CSS/footer.css">
	
</head>
<body>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><div class="nav-article">
		<nav>
			<ul class="nav nav justify-content-end ">
				
					<!-- 로그인 전 (세션에 user_email 이 없으면 로그인 해야함.-->
		<!-- 로그인 후 (세션저장됨)-->
      <c:choose>
		<c:when test="${sessionScope.userDto[0].user_email == null }">
      		<li><button id="login" type="button" class="btn btn-warning" onclick="location.href='${pageContext.request.contextPath}/User/login.uo'" >로그인</button></li>
		</c:when>
		<c:when test="${userDto[0].user_email != null }">
      		<li><button type="button" class="btn btn-warning" onclick="location.href='${pageContext.request.contextPath}/User/logout.uo'" id="logout">로그아웃</button></li>
			<li class="nav-item "><a class="nav-link active" onclick="location.href='${pageContext.request.contextPath}/User/mypageView.uo'">마이페이지</a></li> 
		</c:when>
      </c:choose>
				
			</ul>
		</nav>
		<h1 class="logo">
			<span>S</span><span>y</span><span>s</span><span>o</span><span>u</span><span>t</span>
		</h1>
		<p class="text"> 
			<span>개발자들을 위한 커뮤니티 사이트 sysout. 코딩하며 막혔던 부분에 대한 질문도 하고 본인만의 꿀팁들을 </span><span>공유</span><span>하세요.</span></p>
		<article>
			<div class="container">
				<div class="card">
					<div class="face face1">
						<div class="content">
							<img src="image/identity.png">
							<h3>사이트추천게시판</h3>
						</div>
					</div>
					<div class="face face2">
						<div class="content">
							<p>매번 필요한 기능 구글링 하기 귀찮으셨죠? 저희가 다 모아놨어요 :)</p>
								<a href="#">사이트추천게시판이동</a>
						</div>
					</div>
				</div>
				<div class="card">
					<div class="face face1">
						<div class="content">
							<img src="image/thinking.png">
							<h3>질문게시판</h3>
						</div>
					</div>
					<div class="face face2">
						<div class="content">
							<p>코딩하며 어려운데 질문하기 어려웠던 문제들을 나눠봐요.</p>
								<a href="Board/qnaBoardList.po">질문게시판이동하기</a>
						</div>
					</div>
				</div>
				<div class="card">
					<div class="face face1">
						<div class="content">
							<img src="image/meeting.png">
							<h3>자유게시판</h3>
						</div>
					</div>
					<div class="face face2">
						<div class="content">
							<p>원하는 이야기를 마음껏 나누어 보세요.</p>
								<a href="Board/freeBoardList.po">자유게시판이동하기</a>
						</div>
					</div>
				</div>
				<div class="card">
					<div class="face face1">
						<div class="content">
							<img src="image/success.png">
							<h3>포인트랭킹</h3>
						</div>
					</div>
					<div class="face face2">
						<div class="content">
							<p>누적포인트 순위를 알 수 있습니다.</p>
								<a href="User/userRank.po">포인트랭킹페이지이동</a>
						</div>
					</div>
				</div>
				<div class="card">
					<div class="face face1">
						<div class="content">
							<img src="image/notice.png">
							<h3>공지사항</h3>
						</div>
					</div>
					<div class="face face2">
						<div class="content">
							<p></p>
								<a href="Board/noticeBoardList.po">해당페이지이동</a>
						</div>
					</div>
				</div>
			</div>
		</article>
	</div>

	<footer class="ft_white">
        <div class="ft_link">
            <ul class="ft_link-ul">
                <li class="about">
                    <p>ABOUT SYSOUT FROM MAXIM</p>
                </li>
                <p class="snsicon">
                    <i class="fab fa-instagram fa-3x"></i>
                    <i class="fab fa-facebook-square fa-3x"></i>
                </p>
            </ul>
            <div class="div-call">
                <p class="call">문의전화</p>
                <p class="callnumber">
                    <strong class="tel">1588-5890</strong>
                    <a class="teltime">(평일 09:00 ~ 18:00)</a>
                </p>
                <p class="ars">
                    <span>
                        <i class="fas fa-phone-volume"></i>
                        <a class="ico_ars">ARS 안내</a>
                    </span>
                </p>
            </div>
            <div class="logo">
                <svg class="syslogo" width="500" height="500" viewBox="0 0 500 500" fill="none" xmlns="http://www.w3.org/2000/svg">
					<rect width="500" height="500" rx="75" fill="#2F2E2E"/>
					<path d="M125.122 252.776C105.021 246.998 90.3727 239.918 81.1768 231.536C72.0622 223.073 67.5049 212.656 67.5049 200.286C67.5049 186.289 73.0794 174.733 84.2285 165.618C95.459 156.422 110.026 151.824 127.93 151.824C140.137 151.824 151.001 154.184 160.522 158.904C170.125 163.624 177.531 170.135 182.739 178.436C188.029 186.736 190.674 195.81 190.674 205.657H167.114C167.114 194.915 163.696 186.492 156.86 180.389C150.024 174.204 140.381 171.111 127.93 171.111C116.374 171.111 107.34 173.675 100.83 178.802C94.401 183.847 91.1865 190.887 91.1865 199.92C91.1865 207.163 94.2383 213.307 100.342 218.353C106.527 223.317 116.984 227.874 131.714 232.024C146.525 236.175 158.081 240.773 166.382 245.818C174.764 250.783 180.949 256.601 184.937 263.274C189.006 269.948 191.04 277.801 191.04 286.834C191.04 301.238 185.425 312.794 174.194 321.502C162.964 330.128 147.949 334.441 129.15 334.441C116.943 334.441 105.55 332.122 94.9707 327.483C84.3913 322.763 76.2126 316.334 70.4346 308.196C64.738 300.058 61.8896 290.822 61.8896 280.486H85.4492C85.4492 291.229 89.3962 299.733 97.29 305.999C105.265 312.184 115.885 315.276 129.15 315.276C141.52 315.276 151.001 312.754 157.593 307.708C164.185 302.662 167.48 295.786 167.48 287.078C167.48 278.37 164.429 271.657 158.325 266.937C152.222 262.135 141.154 257.415 125.122 252.776ZM260.864 298.919L291.626 199.92H315.796L262.695 352.386C254.476 374.358 241.414 385.345 223.511 385.345L219.238 384.979L210.815 383.392V365.081L216.919 365.569C224.569 365.569 230.509 364.023 234.741 360.931C239.054 357.838 242.594 352.182 245.361 343.963L250.366 330.535L203.247 199.92H227.905L260.864 298.919ZM412.964 296.966C412.964 290.862 410.645 286.142 406.006 282.806C401.449 279.388 393.433 276.458 381.958 274.017C370.565 271.575 361.491 268.646 354.736 265.228C348.063 261.81 343.099 257.741 339.844 253.021C336.67 248.3 335.083 242.685 335.083 236.175C335.083 225.351 339.64 216.196 348.755 208.709C357.951 201.222 369.67 197.479 383.911 197.479C398.885 197.479 411.011 201.344 420.288 209.075C429.647 216.806 434.326 226.694 434.326 238.738H411.621C411.621 232.553 408.976 227.223 403.687 222.747C398.478 218.271 391.886 216.033 383.911 216.033C375.692 216.033 369.263 217.824 364.624 221.404C359.985 224.985 357.666 229.664 357.666 235.442C357.666 240.895 359.823 245.005 364.136 247.771C368.449 250.538 376.221 253.183 387.451 255.706C398.763 258.229 407.918 261.24 414.917 264.739C421.916 268.239 427.083 272.47 430.42 277.435C433.838 282.317 435.547 288.299 435.547 295.379C435.547 307.179 430.827 316.66 421.387 323.821C411.947 330.901 399.699 334.441 384.644 334.441C374.064 334.441 364.705 332.57 356.567 328.826C348.429 325.083 342.041 319.874 337.402 313.201C332.845 306.447 330.566 299.163 330.566 291.351H353.149C353.556 298.919 356.567 304.941 362.183 309.417C367.879 313.812 375.366 316.009 384.644 316.009C393.188 316.009 400.024 314.3 405.151 310.882C410.36 307.382 412.964 302.744 412.964 296.966Z" fill="#FFD366"/>
				</svg>					
                <p>SYSOUT</p>
                <p>SONSORED BY KOREAIT</p>
            </div>
        </div>
        <hr>
        <div class="ft_info">
            <a href="#">이용약관</a>
            <a href="#"><Strong>개인정보처리방침</Strong></a>
            <a href="#">광고문의</a>
        </div>
        <hr>
        <div class="ft_addr1">
            <a>(주)코리아아이티</a>
            <a>서울특별시 강남구 테헤란로 146 (역삼동)</a>
            <a>대표자 : 이강혁</a>
        </div>
        <div class="ft_addr2">
            <a>사업자등록번호 : 123-12-12345</a>
            <a>개인정보보호책임자 : 이예지</a>
            <a>문의전화 : 1588-5890</a>
        </div>
        <div class="ft_addr3">
            <p class="copy">© 2020 MAXIM KOREAIT ACADEMY. ALL RIGHTS RESERVED</p>
        </div>
    </footer>
</body>
<script src="js/jquery-3.2.1.min.js"></script>
<script src="js/fontawesome-all.min.js"></script>
</html>
