<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항/QNA</title>
<style type="text/css">
/*YM_noticeContentsText---------------------------------------*/
	.YM_siteLocation{
		display: flex;
		align-items: flex-end;
		border-bottom: 2px solid;
		height: 130px;
		weight: 100%;
	}
	.YM_siteLocation > h2{
		margin-left: 100px;
		width: 200px; 
		font-size: 50px;
	}
/* MainContent Box ------------------------------------------ */
	#YM_MainContentsBox{
		display: flex;
		flex-direction:column;
		align-items: center;
		width: 100%;
		margin-top:3px;
		
	}
	#YM_MainContentsBox > div{
		width: 1000px;
		border:1px solid;
		font-size: 13px;
	}
	#boardTitle{
		height: 30px;	
		text-align: justify;
		font-size: 20px;
	}
	#boardContent{
		height: 500px;	
		text-align: justify;
	}
	#boardDate{
		text-align: right;
	}
/*YM_Mainfooter  button 위치-----------------------------------------*/
	#YM_Mainfooter {
		display: flex;
		flex-direction: row;
		justify-content: center;
		wight: 300px;
		margin-top: 10px;
	}
	#YM_Mainfooter button{
		width: 60px;
		height: 30px;
		margin-right: 5px;
	}
	
	.listButton{
		background-color: #4cd964;
	}
	.updateButton{
		background-color: #ffc041;
	}
	.deleteButton{
		background-color: #ff3b30;
	}
	
	
	
	
</style>
</head>
<body>
<div class="container">
 <div class="content">
<!-- main header -->
<div id="YM_NoticeContentsHeaderBox">
	<%@ include file="../header.jsp"%>
</div>

<div id="YM_NoticeContentsBody">

	<main id="YM_NoticeContentsMainBox">
		<div class="YM_siteLocation">
			<h2 id="YM_noticeContentsText"></h2>
			
			<script type="text/javascript">	
					if( ${bbsContents.bbs_category}==2){
						document.getElementById("YM_noticeContentsText").innerHTML = "QnA";
					}else{
						document.getElementById("YM_noticeContentsText").innerHTML = "공지사항";
					}
			</script>		
			
		</div>
		
		<div id="YM_MainContentsBox">	
			<div id="boardDate">
				작성일 : ${bbsContents.bbs_date}
			</div>
			<div id="boardTitle">
				${bbsContents.bbs_title}
			</div>
			<div id="boardContent">
				${bbsContents.bbs_content}
			</div>	
		</div>

		<div id="YM_Mainfooter">
			<div>
				<button class="listButton" onclick="location.href='mainNotice'" >목록</button>
				<c:if test="${sessionScope.sessionId == 'admin'}">			<!-- 관리자로 로그인 했을때만 수정, 삭제 버튼 보여줌. -->
					<button class="updateButton" value="수정" onclick="location.href='contentsUpdateForm?bbs_no=${bbsContents.bbs_no}&bbs_category=${bbsContents.bbs_category}'">수정</button>
					<button class="deleteButton" value="삭제" onclick="location.href='contentsDelete?bbs_no=${bbsContents.bbs_no}&bbs_category=${bbsContents.bbs_category}'">삭제</button>
				</c:if>
			</div>
		</div>
	</main>
</div>




<!-- main footer -->
<div id="YM_NoticeContentsFooterBox">
	<%@ include file="../footer.jsp"%>
</div>
 </div>
</div>
</body>
</html>