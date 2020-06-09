<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="CSS/FindPw.css">
    <title>비밀번호찾기Modal</title>
</head>
<body>
    <!-- The Modal -->
    <div id="myModal" class="modal">
        <!-- 비밀번호 찾기 헤더부분 -->
        <div class="title">
            <p>비밀번호 찾기</p>
        </div>
        <p id="info">가입시 정보를 입력해주세요!</p>

        <!-- 이메일 , 휴대전화 입력 div 영역  -->
        <form action="" method="post" class="container01">
            <!-- 이메일 입력부분 -->
            <div class="emailInput">
               <div class="emailInput_01">
                    <label for="userEmail" class="email01">이메일</label>
                    <input type="text" name="userEmail" id="input01">
                    <span>@</span>
                </div>
                <input type="text" name="e_Address" placeholder="직접입력" id="input02">
            </div>

            <!-- 휴대전화 입력부분 -->
            <div>
                <label for="phone" class="phone02">휴대전화</label><input type="number" name="phone" id="phoneNum" />
               <div id="spanW"><span class="warning">※'-'을 빼고 입력해주시기 바랍니다.</span></div>
            </div>
        </form>
        <!-- 이전화면, 임시비밀번호발급 버튼 부분 -->
        <div class="btn01">
            <button type="button" id="beforeBtn" onclick="history.back()">이전화면</button>
            <button type="button" id="findBtn" onclick="location.href='이메일찾기'">임시비밀번호 발급</button>
        </div>

    </div>

</body>
</html>