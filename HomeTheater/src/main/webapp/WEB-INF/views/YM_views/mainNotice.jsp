<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"> -->

<title>공지사항/QNA</title>

<!--  <link href="css/notice.css?ver=1" type="text/css" rel="stylesheet" > -->

<style type="text/css">
	
/* 공통부분 ------------------------------------------------*/
		*{
		box-sizing: border-box;
	}
	
	body {	font-family: 굴림체; text-align: center;	}
		
		.hidden{
		 display: none;
		}
/* visualbox부분 --------------------------------------------------- */
	.YM_noticeVisualBox{
		display:flex;
		justify-content: space-around;
		border-bottom: 1px solid;
		align-items: flex-end;
		
		height: 130px;
		weight: 100%;
		--background-color: #545636;
	}
	
	.YM_noticeVisualBox > .YM_siteLocationR {
	  width: 300px;
	  margin: 10px;
	  text-align: center;
	  font-size: 10px;
	}
	
	.YM_siteLocationL > h3{
		width: 200px; 
		font-size: 50px;
	}
			
/* noticeMain 본문 ------------------------------------------------------ */
		.YM_mainContent{
			display: flex;
		  	flex-direction: column;
			width: 100%;
			align-items: center;
		}
	/*-YM_MainChangeCategory 카테고리버튼-------------------------------------*/	
			.YM_MainChangeCategory{
				margin-top:13px;
			}
			
	
	/*----Table------------------------------------------*/		
		.YM_mainContent > table { 
			border-collapse:collapse;
			width:100%;
		 }
		
		th {	
			background: #c6c6c6;
			
			}
		tr,td{ 
			height: 35px;  
			--background: #f9f3b3; 
			text-align: center;	
			border-bottom: 1px solid #ddd;
			} 
	/*---Paging-------------------------------------------------*/			
		.YM_MainPaging {
			display: flex;
			flex-direction: row;
			margin-top: 8px;
		}
		
		
/*--검색창 , 글쓰기 버튼------------------------------------------------------------  */
	.YM_mainContentFooter{
		display: flex;
		flex-direction: row;
		justify-content: space-around;
		
	}
	
	.YM_mainContentFooter  div{
		margin: 10px;
		text-align: center;
	}
			
		
</style>
<script>
	function searchBbs(){
		var bbs_category = $("#bbs_category").val();
		var selectValue = $("#selectBox option:selected").text();
		var bbs_title = $("#searchValue").val();
		alert("카테고리="+bbs_category);
		
		if(selectValue==="전체"){
			alert("전체이다.");
			$.ajax({
				url: "bbsTotal",
				type: "GET",
				data: {
					"bbs_title": bbs_title,
					"bbs_category": bbs_category
				},
				success: function(){
					alert("전체찾기성공");
				}
			})
		}else if(selectValue==="제목"){
			alert("제목이다.");
		}else if(selectValue==="내용"){
			alert("내용이다");
		}else if(selectValue==="작성자"){
			alert("작성자이다");
		}
	}
</script>

</head>
<body>
<div class="container">
 <div class="content">
<!-- main header -->
<div id="YM_noticeHeaderBox">
	<%@ include file="../header.jsp"%>
</div>

<!-- visual box -->
<div class="YM_noticeVisualBox">
		<!-- bbs_category값을 이용하여 if문으로 제목 바꾸기 -->
		<div class="YM_siteLocationL">
			<h3 id="textChangeL"></h3>	
			
						
		</div>
		<div class="YM_siteLocationR">
             <a href="../main"><img src="<%=context%>/Img/YM_Img/b_home.png" alt="home" style="width: 20px; height: 20px;" /></a>
              > 게시판  ><strong id="textChangeR"></strong>
		</div>	
		
		<script type="text/javascript">	
			if(${bbs.bbs_category}==2){
				document.getElementById("textChangeL").innerHTML = "QnA";
				document.getElementById("textChangeR").innerHTML = "QnA";
			}else{
				document.getElementById("textChangeL").innerHTML = "공지사항";
				document.getElementById("textChangeR").innerHTML = "공지사항";
			}
		</script>		
</div>
<div id="YM_noticeMainBox" class="wrapper">
	
	<!--본문 -->
	<main class="YM_mainContent">
		<h2 class="hidden">본문내용</h2>
		
		<div class="YM_MainChangeCategory">
			<!--공지사항 QNA 전환 selectBox -->
	 		<form action="mainNotice">
				 <select name="bbs_category" id="YM_selectValue">
					<option value=1>공지사항</option>	
					<option value=2>QNA</option>	
				</select> 
			    <input type="submit" value="확인">
			</form>
			
			<script type="text/javascript">	
						if(${bbs.bbs_category}==2){
							 document.getElementById('YM_selectValue').getElementsByTagName('option')[1].selected = 'selected';
						}else{
							 document.getElementById('YM_selectValue').getElementsByTagName('option')[0].selected = 'selected';
						}
			</script>	
        </div>       
		<div class="YM_MainTable">
			<h3>Total : ${total}</h3>
			<!-- 전체 테이블 -->
			<table border="1">
				<thead>
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>조회</th>
						<th>작성자</th>
						<th>작성일</th>
					</tr>
				</thead>
				<tbody>	
			
						<!-- DB 연결 js부분 -->
						<c:forEach var="bbs" items="${listBbs}" varStatus="status">
							<!-- 전체 레코드 수 - ( (현재 페이지 번호 - 1) * 한 페이지당 보여지는 레코드 수 + 현재 게시물 출력 순서 ) -->
							<tr><td class="tableNumber"> ${pg.total-((pg.currentPage-1)*pg.rowPage+ status.index)} </td>
							<td class="tableTitle"><a href="noticeContents?bbs_no=${bbs.bbs_no }&bbs_category=${bbs.bbs_category}">${bbs.bbs_title}</a></td>
								<td>${bbs.bbs_hit }</td><td>${bbs.m_id}</td><td>${bbs.bbs_date }</td></tr>
						
						</c:forEach> 
					</tbody>
			</table>
		</div>
		<!-- paging -->
		<div class="YM_MainPaging">
			<c:if test="${pg.startPage > pg.pageBlock }">
				<a href="mainNotice?currentPage=${pg.startPage-pg.pageBlock}">[이전]</a>
			</c:if>
			<c:forEach var="i" begin="${pg.startPage}" end="${pg.endPage}">
				<a href="mainNotice?currentPage=${i}&bbs_category=${bbs.bbs_category}">[${i}]</a>
			</c:forEach>
			<c:if test="${pg.endPage < pg.totalPage }">
				<a href="mainNotice?currentPage=${pg.startPage+pg.pageBlock}">[다음]</a>
			</c:if>		 
		</div>	
		
		<div class="YM_mainContentFooter" >
				<form action="<%=context%>/YM_views/mainNotice" method="GET">
					<div>
						<select name="selectBox">
							<option>전체</option>
							<option>제목</option>
							<option>내용</option>
							<option>작성자</option>
						</select>
						<input type="hidden" name="bbs_category" value="${bbs.bbs_category}">
						<input type="text" name="searchValue">
						<input type="submit" id="searchValue" value="검색">
					</div>
				</form>
				
				<c:if test="${sessionScope.sessionId == 'admin'}">	<!-- 관리자로 로그인 했을때만 새글 쓰기 버튼 보여줌. -->
					<div>
						<button onclick="location.href='noticeWriteForm?bbs_category=${bbs.bbs_category}'">글쓰기</button>
					</div>
				</c:if>
				
		</div>
		
	</main>
</div>
	
<!-- main footer-->
<div id="YM_noticeFooterBox">
	<%@ include file="../footer.jsp"%>
</div>
	
	
 </div>
</div>
</body>
</html>