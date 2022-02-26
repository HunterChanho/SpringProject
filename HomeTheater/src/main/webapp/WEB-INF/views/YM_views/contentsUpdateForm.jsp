<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항/QNA 글작성</title>
<script src="//code.jquery.com/jquery.min.js"></script>
<style type="text/css">
/* main 헤더 -----------------------------------------------------*/
	.YM_siteLocation > h2{
		margin-left: 100px;
		margin-top: auto;
		width: 300px; 
		font-size: 55px;
	}
	
	.titleUnderLine > h3{
		display: flex;
	    flex-direction: column;
	    align-items: center;
	    width: 100%;
	    height: 60px;
	    justify-content: flex-end;
	    border-bottom: 2px solid;
	}
	
/* MainContent Box ------------------------------------------ */
	#YM_board_write{
		display: flex;
		flex-direction:column;
		align-items: center;
		width: 100%;
		margin-top:3px;
	
		
	}
	#YM_board_write > div {
		width: 1000px;
		border:1px solid;
	}
	#YM_board_write textarea{
		width: 1000px;
			
	}
	#boardTitle, .titleTextarea{
		height: 30px;	
		text-align: justify;
		font-size: 20px;
	}
	#boardContent, .contentTextarea{
		height: 500px;	
		text-align: justify;
		font-size: 16px;
	}
	#boardDate{
		text-align: right;
		font-size: 16px;
	}
	
	.buttonDiv{
		display: flex;
  		flex-direction: row;
  		justify-content: center;
  		align-items: center;
  		height: 50px;
	}
	.buttonDiv button{
		
		width: 60px;
		height: 30px;
		
	}
	
	
</style>
</head>
<body>

<!-- main header -->
<div id="YM_noticeHeaderBox">
	<%@ include file="../header.jsp"%>
</div>

<div id="YM_noticeContentBody">
	<main>
		<div class="YM_siteLocation">
			<h2 id="YM_noticeContentsText"></h2>
			
			<script type="text/javascript">	
				if(${bbsContents.bbs_category}==2 ){
					document.getElementById("YM_noticeContentsText").innerHTML = "QnA";
				}else{
					document.getElementById("YM_noticeContentsText").innerHTML = "공지사항";
				}
			</script>		
		</div>
		<div class="titleUnderLine">  
			<h3>글을 수정하는 공간입니다.</h3>
		<div>
		<div id="YM_noticeContentBox">
			<div id="YM_board_write">
				<form action="contentsUpdate" method="post">
				     <input type="hidden" name="bbs_no" value="${bbsContents.bbs_no }">
			          <input type="hidden" name="bbs_category" value="${bbsContents.bbs_category }">
				
					<div id="boardDate">
						작성일 : ${bbsContents.bbs_date}
					</div>
					<div id="boardTitle">
					<!-- name=""파라미터로 데이터를 넘겨주는역활      required-->
						<textarea class="titleTextarea" name="bbs_title"  placeholder="제목" maxlength="100">${bbsContents.bbs_title}</textarea>					
					</div>
					<div id="boardContent">
						 <textarea class="contentTextarea" name="bbs_content"  placeholder="내용" maxlength="250">${bbsContents.bbs_content}</textarea>
					</div>
					<div class="buttonDiv">
						<button type="submit"  onclick="location.href='mainNotice'">글 수정</button>
					</div>
					
				</form>
				
					
			</div>
		</div>
		
	</main>
</div>




<!-- main footer -->
<div id="YM_noticeFooterBox">
	<%@ include file="../footer.jsp"%>
</div>

</body>
</html>