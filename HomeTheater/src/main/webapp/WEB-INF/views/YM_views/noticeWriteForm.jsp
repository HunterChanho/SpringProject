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
		display: flex;
  		flex-direction: row;
  		justify-content: right;
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
<div class="container">
 <div class="content">
<!-- main header -->
<div id="YM_noticeHeaderBox">
	<%@ include file="../header.jsp"%>
</div>

<div id="YM_noticeContentBody">
	<main>
		<div class="YM_siteLocation">
			<h2 id="textChange"></h2>
			
			<script type="text/javascript">	
					if(${bbs.bbs_category}==2){
						document.getElementById("textChange").innerHTML = "QnA";
					}else{
						document.getElementById("textChange").innerHTML = "공지사항";
					}
			</script>			
		</div>
		<div class="titleUnderLine">  
			<h3>글을 작성하는 공간입니다.</h3>
		<div>
		<div id="YM_noticeContentBox">
			<div id="YM_board_write">
				
			
				<!-- <form action="mainNotice"> -->
				<form action="noticeWrite"  method="post">
					 <input type="hidden" name="bbs_category" value="${bbs.bbs_category}">
					<div id="boardDate">
						<input type="date" name="bbs_date" required="required">
					</div>
					<div id="boardTitle">
					<!-- name=""파라미터로 데이터를 넘겨주는역활      required-->
						<textarea class="titleTextarea" name="bbs_title"  placeholder="제목" maxlength="100" required ></textarea>					
					</div>
					<div id="boardContent">
						 <textarea class="contentTextarea" name="bbs_content"  placeholder="내용" maxlength="250" required></textarea>
					</div>
					<div class="buttonDiv">
						<button type="submit" onclick="location.href='mainNotice">글 작성</button>
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
 </div>
</div>
</body>
</html>