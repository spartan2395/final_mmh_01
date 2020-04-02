<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% request.setCharacterEncoding("UTF-8");%>
<% response.setContentType("text/html; charset=UTF-8");%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang='ko'>
<head>
	<title>Note</title>
	<meta charset='utf-8'>
	<meta name='Viewport' content='width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.6'>
	<meta name='Title' content='MMH'>
	<meta name='Subject' content='MMH'>
	<meta name='Keywords' content='MMH'>
	<meta name='Author' content='Do'>
	<meta name='Publisher' content='1Jo'>
	<meta name='Description' content='good tool'>
	<meta name='Classification' content='A Walk Across Time LA PURIFICADORA, PUEBLA, MEXICO'>
	<meta name='Location' content='Seoul Korea'>
	<meta name='Author-Date' content='2020.03.30'>
	<meta name='Copyright' content='MMH'>
	<meta name='Robots' content='index,follow'>
	
	<link rel='shortcut icon'    href='img/logo-icon-dh.png'>
	<link rel='apple-touch-icon' href='img/logo-icon-dh.png'>
	
	<link rel='stylesheet' href='resources/css/reset.css'>
	<link rel='stylesheet' href='resources/css/style.css'>
	<link rel='stylesheet' href='resources/css/reponsive.css'>
	<link rel="stylesheet" href="resources/css/style1.css"/>
	
	<link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.5.0/css/all.css' integrity='sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU' crossorigin='anonymous'>	
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
		
	<script src='resources/js/lib/jquery-1.12.4.min.js'></script>
	<script src='resources/js/lib/jquery.easing.1.3.js'></script>
	<!-- <script src='js/lib/prefixfree.min.js'></script> -->

	<script src='resources/js/header.js'></script>
	<script src="resources/js/script1.js"></script>
	<script src='resources/js/section1.js'></script>
	<script src='resources/js/section2.js'></script>

  
	<!--[if (lte IE 9)]>
		<script src='js/lib/IE9.js'></script>
	<![endif]-->

	<!--[if (lte IE 8)]>
		<script src='js/lib/html5shiv.min.js'></script>
		<script src='js/lib/jqPIE.js'></script>
		<script src='js/lib/PIE.js'></script>
		<link rel='stylesheet' href='#'>
	<![endif]-->	
	
	<!--[if (lte IE 7)]>
		<link rel='stylesheet' href='#'>
	<![endif]-->	

<script type="text/javascript">
	$(function() {
		$("#loginChk").hide();
	});
	function login() {
		var m_id = $("#m_id").val().trim();
		var m_pw = $("#m_pw").val().trim();
		console.log(m_id);
		console.log(m_pw);
		//console.log(memberid + "/" + memberpw);
		var loginVal={
				"m_id":m_id,
				"m_pw":m_pw
		};
		if(m_id==null||m_id==""||m_pw==null||m_pw==""){
			alert("ID 및 pw를 확인해 주세요...");
		}else{
			$.ajax({
				type:"post",
				url:"loginajax.do",
				data:JSON.stringify(loginVal),
				contentType : "application/json",
				dataType:"json",
				success: function(msg){
					console.log(msg);
					if(msg.check==true){
						if(msg.admin==true){
						location.href='admin_main.do';
						}else{
						location.href='user_list.do';	
						}
					}else{
						$("#loginChk").show()
						$("#loginChk").html("ID 혹은 PW가 잘못되었습니다...");
					}
				},
				error:function(){
					alert("통신 실패");
				}
			});
		}
	}
</script>
</head>
<body>
<div id='wrap'>

	<ul id='skip'>
		<li><a href='#'>메뉴바로가기</a></li>
		<li><a href='#'>메인바로가기</a></li>
		<li><a href='#'>하단바로가기</a></li>
	</ul>
	
	
	<header id='header'>
		<div class='header-wrap'>
			<ul class='pc floatclear'>
				<li>
					<p>
						<a href='admin_main.do' class='btnLogo'>
							<img src='resources/img/logo-icon-dh-white.png' alt=''>
							<span>말만해</span>
						</a>
					</p>
				</li>
				<li>
					<ul class='nav-wrap'>
						<li>
							<aside class='floatclear'>
								<ul>
									<c:choose>
								        <c:when test="${login.m_name==null}">
								        	<li><a href='#'>Join</a></li>
											<li><span>|</span></li>
								            <li onclick="" class="btn-share">
								            	<a href='#'>Log in</a>
								            </li>
								        </c:when>         
								        <c:otherwise>
								           <li onclick="" ><a href='logout.do'>Log out</a></li>
								         </c:otherwise>
								    </c:choose>									
								</ul>
								
							</aside>
						</li>
						<li>
							<nav>
								<ul>

									<li><a href='#' class='btn-main'>회사소개<span></span></a></li>
									<li><a href='#' class='btn-main'>프로젝트예시 <span></span></a></li>
									<li><a href='notice.do' class='btn-main'>공지사항 <span></span></a></li>
									<c:choose>
								        <c:when test="${login.m_name==null}">							          
								        </c:when>         
								        <c:otherwise>
								           <li><a href='admin.do' class='btn-main' >MYPAGE<span></span></a></li>
								         </c:otherwise>
								    </c:choose>		
									

								</ul>
							</nav>
						</li>
					</ul>	
				</li>
			</ul>
			
			<ul id='mobile-wrap'>	
				<li>					
					<ul class='mobile-left'>
						<li>
							<a href='#' class='left-mLogoBtn'><img src='resources/img/logo-icon-dh-white.png' alt=''></a>
							<a href='#' class='closeBtn'><i>&#10005;</i></a>
						</li>
						<li>
							<ul class='mobile-left-nav'>
								<li><a href='#'>회사소개</a></li>
								<li><a href='#'>프로젝트예시</a></li>
								<li><a href='notice.do'>공지사항</a></li>
							
								<li>
									<ul>
										<li>
											<p>
												<span><a href='#' target='_blank'><i class='fab fa-instagram'></i></a></span>
												<span><a href='#' target='_blank'><i class='fab fa-facebook-f'></i></a></span>
												<span><a href='#' target='_blank'><i class='fab fa-pinterest'></i></a></span>
												<span><a href='#' target='_blank'><i class='fab fa-twitter'></i></a></span>
												<span><a href='#' target='_blank'><i class='fab fa-linkedin-in'></i></a></span>
												<span><a href='#' target='_blank'><i class='fa fa-youtube-play'></i></a></span>
											</p>												
										</li>
									</ul>									
								</li>
							</ul>
						</li>
					</ul>
				</li>
				
				<li>
					<ul class='mobile'>
						<li>
							<h1><a href='#' class='mLogoBtn'><img src='resources/img/logo-icon-dh-black.png' alt=''><span>말만해</span></a></h1>
						</li>
						<li>
							<a href='#' class='appBarBtn'>
								<i class='bar1 bar'></i>
								<i class='bar2 bar'></i>
								<i class='bar3 bar'></i>
							</a>
						</li>
						<li>
							<a href='#' class='searchBtn'>
								<i class='fa fa-search'></i>
							</a>
						</li>
					</ul>
				</li>
			</ul>	
		</div>
	</header>

	
	<main id='main'>

		
		<section id='section1' class='section'>
			<div class='section1-wrap'> <!-- 창너비$(window).innerWidth()(100%) * 창높이 창너비$(window).innerHeight() -->
				<h2 class='hidden'>main video</h2>
				<video id='video1' class='video main-video' autoplay loop muted poster='resources/img/GS-OE-kenoa-exclsuive-beach-spa-and-resort.jpg'>
					<source src='resources/mov/main/main.mp4' type='video/mp4'>
				</video>
				

 				
				<div class='section1-modal'>
					<ul>
						<li>LOG IN</li>
						
						<li>
							<table id="rands">
								<tr>
									<td>ID</td>
									<td><input type="text" name="m_id" id="m_id" /></td>
								</tr>
								<tr>
									<td>PW</td>
									<td><input type="password" name="m_pw" id="m_pw" /></td>
								</tr>
								<tr>
								<tr>
									<td colspan="2"><button onclick="login()" value="login">LOGIN</button></td>
								</tr>
							</table>	
						</li>
						
						<li><i></i></li>
						<li>
							<a href='#' class='iconBt'><i class='fab fa-facebook-f'></i></a>
							<a href='#' class='iconBt'><i class='fab fa-twitter'></i></a>
							<a href='#' class='iconBt'><i class='fab fa-linkedin-in'></i></a>
							<a href='#' class='iconBt'><i class="material-icons">email</i></a>
						</li>
						<li><a href='javascript:' class='btn-modal-close'><i class="material-icons">close</i></a></li>
					</ul>
				</div> 
			
				<div class='section1-bottom-icon-btn-wrap'>
					<div>
						<ul>
							<li>
								<ul class='floatclear'>
									<li><a href='#' class='btn-icon-video addIconBt'><i class='fas fa-video'></i></a></li>
									<li><a href='#' class='btn-icon-map btn-share'>  <i class='fas fa-globe'></i></a></li>
								</ul>
							</li>
							<li>
								<ul class='floatclear'>
									<li><a href='#' class='btn-icon-down'><i class='fa fa-angle-down'></i></a></li>
								</ul>							
							</li>
							<li>
								<ul class='floatclear'>
									<li><a href='#' class='btn-icon-play'><i class='fas fa-pause'></i></a></li>
									<li><a href='#' class='btn-icon-mute'>  <i class='fas fa-volume-up'></i></a></li>
								</ul>							
							</li>
						</ul>
					</div>
				</div>
			</div>

	

		</section>
		
		<section id='section2' class='section'>
			<div class='section2-wrap'> <!-- 창너비$(window).innerWidth()(50%) * 창높이 auto(좌측높이로 설정) -->
				<ul class='section2-box-wrap floatclear'>
					<li>
						<ul>
							<li>
								<h2>
									
									${list[0].mytitle}
									<i></i>
								</h2>
							</li>
							<li>
								<p>
									${list[0].mycontent }
	
								</p>
							</li>
						</ul>
					</li>
					<li>
						<ul>
							<li>
								<h2>
									${list[1].mytitle}
									<i></i>
								</h2>
							</li>
							<li>
								<p>
									${list[1].mycontent}
								</p>
							</li>
						</ul>
					</li>

					
				</ul>
			</div>
					<div id="brandVisual">
				<ul>
					<li class="visual_0"><a href="#">배너이미지1</a></li>
					<li class="visual_1"><a href="#">배너이미지 2</a></li>
					<li class="visual_2"><a href="#">배너이미지 3</a></li>
				</ul>
			</div>
			
			<div class="btnImg">
				<img src="resources/img/left.png" alt="" class="prev" width='30' height='50'/>
				<img src="resources/img/right.png" alt="" class="next" width='30' height='50'/>
			</div>
			
		</section>

	</main>
	
	<footer id='footer'><!-- 창너비$(window).innerWidth()(100%) * 창높이 auto -->
		<div class='footer-wrap'> <!-- 창너비$(window).innerWidth()(1090px) * 창높이 auto -->

			
			<div>
				<ul class='footer-copyright floatclear'>
					<li>
						<p>
							© MMH™ 2020  •  <span><a href='#'>Privacy Policy</a></span>  •  <span><a href='#'>Impressum</a></span>  •  <span><a href='#'>Terms & Conditions</a></span>
						</p>
					</li>
					<li>
						<p>
							<span><a href='#' target='_blank'><i class='fab fa-instagram'></i></a></span>
							<span><a href='#' target='_blank'><i class='fab fa-facebook-f'></i></a></span>
							<span><a href='#' target='_blank'><i class='fab fa-pinterest'></i></a></span>
							<span><a href='#' target='_blank'><i class='fab fa-twitter'></i></a></span>
							<span><a href='#' target='_blank'><i class='fab fa-linkedin-in'></i></a></span>
							<span><a href='#' target='_blank'><i class='fa fa-youtube-play'></i></a></span>
						</p>						
					</li>
				</ul>
			</div>
		</div>
	</footer>
	
</div>
</body>
</html>





