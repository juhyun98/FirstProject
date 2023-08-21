<%@page import="com.model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FriendsFit</title>
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/slideStyle.css">
<link rel="stylesheet" href="css/columnWrite.css">

</head>
<body>
   <div id="whole">
      <div id="mainframe">
			<div id="main-content">
				<% MemberDTO info = (MemberDTO)session.getAttribute("info"); %>
				<div id="header">
					<div class="top-header">
						<img src="img/FFlogo.png" alt="friendsfit-logo"
							style="cursor: pointer" onclick="location.href='index.jsp'">
						<!-- <h1>Our fit</h1> -->
					</div>
					<div class="button-group">

						<% if(info == null){ %>
						<form action="login.jsp">
							<button type="submit" class="sign-in-button"
								formaction="login.jsp">로그인 / 가입</button>
						</form>
						<% }else{ %>
						<div class="GlobalHeader__StyledRightButtonGroup">
							<button class="GlobalHeader__StyledButton">
								<img src="img/userimage.png" alt="user profile"
									class="userprofile" style="cursor: pointer"
									onclick="location.href='mypage.jsp'">
							</button>
						</div>
						<% } %>
					</div>
				</div>

				<div id="main" style="background-color: white;">
					<div class="column-wrapper">
						<h2 class="page-title">컬럼 글쓰기 페이지</h2>
						<br>
						<div>

							<form action="columnAction" method="post"
								enctype="multipart/form-data">

								<div class="column-title-wrapper">
									<div class="column-title-box">
										<input class="column-title" type="text" name="columnTitle"
											placeholder="컬럼 제목 입력..">
									</div>
								</div>
								<div class="column-writer-wrapper">
									<div class="column-writer-box">
										<input class="column-writer" type="text" name="columnWriter"
											placeholder="컬럼작성자명(회사 이름 등)">
									</div>
								</div>
								<div class="file-section">

									<input class="file-input" type="file" name="file">

								</div>
								<div class="content-section">

									<textarea class="column-content" name="columnContent" rows="15"
										cols="51" placeholder="컬럼 내용 입력.."></textarea>
									<br>

								</div>
								<div class="submit-button">

									<input class="submit-button-input" type="submit" value="등록">

								</div>
							</form>

						</div>



					</div>


				</div>

				<div id="footer">
					<h3>FriendsFit</h3>
					<span>피트니스크루<br> 팀장 김대현: ysm691611@naver.com<br>
						변지협 오주현 류혜림 염다영<br> 인공지능사관학교<br> @all rights reserved
					</span>
				</div>

		</div>

         <div id="main-navbar" class="navbar">z
            <ul class="navbar-ul">
               <li class="navbar-li1 navbar-li"><img src="img/nav_home.svg"
                  alt="home icon" width="24" height="24" style="cursor: pointer"
                  onclick="location.href='index.jsp'"> <br>홈</li>
               <li class="navbar-li2 navbar-li"><img src="img/nav_map.svg"
                  alt="map icon" width="24" height="24" style="cursor: pointer"
                  onclick="location.href='map.jsp'"> <br>지도</li>
               <li class="navbar-li3 navbar-li"><img src="img/nav_commu.svg"
                  alt="community icon" width="24" height="24"
                  style="cursor: pointer" onclick="location.href='community.jsp'">
                  <br>커뮤니티</li>
               <li class="navbar-li4 navbar-li"><img src="img/nav_col.svg"
                  alt="column icon" width="24" height="24" style="cursor: pointer"
                  onclick="location.href='column.jsp'"> <br>컬럼</li>
               <li class="navbar-li5 navbar-li"><img src="img/nav_review.svg"
                  alt="review icon" width="24" height="24" style="cursor: pointer"
                  onclick="location.href='review.jsp'"> <br>ocr리뷰</li>
            </ul>
         </div>
      </div>
   </div>
</body>
</html>
