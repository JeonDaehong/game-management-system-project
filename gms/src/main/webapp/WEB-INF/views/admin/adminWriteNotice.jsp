<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />	
<!DOCTYPE html>
<meta charset="utf-8">
<head>
<script>

	function formValidationCheck(){
		
		var goodsTitle = document.f.goodsTitle;
		if (goodsTitle.value == ""){
			alert("상품 이름은 반드시 입력해야 합니다.");
			goodsTitle.focus();
			return false;
		}
		
		var goodsWriter = document.f.goodsWriter;
		if (goodsWriter.value == ""){
			alert("상품 이름은 반드시 입력해야 합니다.");
			goodsWriter.focus();
			return false;
		}
		
		var goodsPublisher = document.f.goodsPublisher;
		if (goodsPublisher.value == ""){
			alert("출판사는 반드시 입력해야 합니다.");
			goodsPublisher.focus();
			return false;
		}
		
		var goodsPrice = document.f.goodsPrice;
		if (goodsPrice.value == ""){
			alert("상품 정가는 반드시 입력해야 합니다.");
			goodsPrice.focus();
			return false;
		}
		
		var goodsSalesPrice = document.f.goodsSalesPrice;
		if (goodsSalesPrice.value == ""){
			alert("상품 판매가격 반드시 입력해야 합니다.");
			goodsSalesPrice.focus();
			return false;
		}
		
		var goodsPoint = document.f.goodsPoint;
		if (goodsPoint.value == ""){
			alert("상품 구매 포인트는 반드시 입력해야 합니다.");
			goodsPoint.focus();
			return false;
		}
		
		var goodsPublishedDate = document.f.goodsPublishedDate;
		if (goodsPublishedDate.value == ""){
			alert("상품 출판일은 반드시 입력해야 합니다.");
			goodsPublishedDate.focus();
			return false;
		}
		
		var goodsTotalPage = document.f.goodsTotalPage;
		if (goodsTotalPage.value == ""){
			alert("제품 총 페이지수는 반드시 입력해야 합니다.");
			goodsTotalPage.focus();
			return false;
		}
		
		var goodsIsbn = document.f.goodsIsbn;
		if (goodsIsbn.value == ""){
			alert("제품 총 페이지수는 반드시 입력해야 합니다.");
			goodsTotalPage.focus();
			return false;
		}
		
		var goodsDeliveryPrice = document.f.goodsDeliveryPrice;
		if (goodsDeliveryPrice.value == ""){
			alert("배송비는 반드시 입력해야 합니다.");
			goodsDeliveryPrice.focus();
			return false;
		}
		
		var goodsDeliveryDate = document.f.goodsDeliveryDate;
		if (goodsDeliveryDate.value == ""){
			alert("상품 도착 예정일은 반드시 입력해야 합니다.");
			goodsDeliveryDate.focus();
			return false;
		}
		
		var goodsFileName = document.f.goodsFileName;
		if (document.f.goodsFileName.value == ""){
			alert("상품 이미지는 반드시 첨부해야 합니다.");
			goodsFileName.focus();
			return false;
		}
		
		if (CKEDITOR.instances.goodsContentsOrder.getData() == ""){
			alert("상품 목차는 반드시 입력해야 합니다.");
			CKEDITOR.instances.goodsContentsOrder.focus();
			return false;
		}
		
		if (CKEDITOR.instances.goodsWriterIntro.getData() == ""){
			alert("상품 저자소개는 반드시 입력해야 합니다.");
			CKEDITOR.instances.goodsWriterIntro.focus();
			return false;
		}
		
		if (CKEDITOR.instances.goodsIntro.getData() == ""){
			alert("상품 소개는 반드시 입력해야 합니다.");
			CKEDITOR.instances.goodsIntro.focus();
			return false;
		}
		
		if (CKEDITOR.instances.goodsPublisherComment.getData() == ""){
			alert("출판사 상품평가는 반드시 입력해야 합니다.");
			CKEDITOR.instances.goodsPublisherComment.focus();
			return false;
		}
		
		if (CKEDITOR.instances.goodsRecommendation.getData() == ""){
			alert("추천사는 반드시 입력해야 합니다.");
			CKEDITOR.instances.goodsRecommendation.focus();
			return false;
		}
		
	}
</script>
<style>
	td:first-child {
		text-align: center;
		font-weight: bold;
	}
</style>
</head>
<body>
	<div class="container">
		<form action="${contextPath}/admin/goods/addNewGoods" name="f" method="post" enctype="multipart/form-data" onsubmit="return formValidationCheck()">
			<h1>새상품 등록창</h1>
			<div class="tab_container">
			<div class="tab_container" id="container">
				<ul class="tabs">
					<li><a href="#tab1">상품 정보</a></li>
					<li><a href="#tab2">상품 목차</a></li>
					<li><a href="#tab3">상품 저자소개</a></li>
					<li><a href="#tab4">상품 소개</a></li>
					<li><a href="#tab5">출판사 상품 평가</a></li>
					<li><a href="#tab6">추천사</a></li>
				</ul>
				<div class="tab_container">
					<div class="tab_content" id="tab1">
						<table class="table table-bordered table-hover">			
							<tr>
								<td width=200>상품 분류</td>
								<td width=500>
									<select name="goodsSort" class="form-control" style="padding-bottom:0; padding-top:0; height:35px">
										<option value="컴퓨터와 인터넷" selected>컴퓨터와 인터넷
										<option value="디지털 기기">디지털 기기
									</select>
								</td>
							</tr>
							<tr>
								<td>상품 종류</td>
								<td>
									<select name="goodsStatus" class="form-control" style="padding-bottom:0; padding-top:0; height:35px">
										<option value="bestseller">베스트셀러</option>
										<option value="steadyseller">스테디셀러</option>
										<option value="newbook" selected >신간</option>
									</select>
								</td>
							 </tr>
							<tr>
								<td>상품 이름</td>
								<td><input name="goodsTitle" type="text" class="form-control"/></td>
							</tr>
							<tr>
								<td >저자</td>
								<td><input name="goodsWriter" type="text" class="form-control"/></td>
							</tr>
							<tr>
								<td>출판사</td>
								<td><input name="goodsPublisher" type="text" class="form-control"/></td>
							</tr>
							<tr>
								<td>상품 정가</td>
								<td><input name="goodsPrice" type="text" class="form-control"/></td>
							</tr>
							<tr>
								<td>상품 판매가격</td>
								<td><input name="goodsSalesPrice" type="text" class="form-control"/></td>
							</tr>
							<tr>
								<td>상품 구매포인트</td>
								<td><input name="goodsPoint" type="text" class="form-control"/></td>
							</tr>
							<tr>
								<td>상품 출판일</td>
								<td><input  name="goodsPublishedDate" type="date" class="form-control"/></td>
							</tr>
							<tr>
								<td>상품 총 페이지수</td>
								<td><input name="goodsTotalPage" type="text" class="form-control"/></td>
							</tr>
							<tr>
								<td>ISBN</td>
								<td><input name="goodsIsbn" type="text" class="form-control"/></td>
							</tr>
							<tr>
								<td>상품 배송비</td>
								<td><input name="goodsDeliveryPrice" type="text" class="form-control"/></td>
							</tr>
							<tr>
								<td>상품 도착 예정일</td>
								<td><input name="goodsDeliveryDate" type="date" class="form-control"/></td>
							</tr>
							<tr>
								<td>상품 이미지</td>
								<td><input name="goodsFileName" type="file" /></td>
							</tr>
						</table>	
					</div>
					<div class="tab_content" id="tab2">
						<div class="form-group">
							<textarea rows="50" cols="80" class="form-control" id="goodsContentsOrder" name="goodsContentsOrder"></textarea>
					    	<script>CKEDITOR.replace('goodsContentsOrder');</script>
					    </div>
					</div>
					<div class="tab_content" id="tab3">
						<div class="form-group">
							<textarea rows="50" cols="80" class="form-control" id="goodsWriterIntro" name="goodsWriterIntro"></textarea>
					    	<script>CKEDITOR.replace('goodsWriterIntro');</script>
					    </div>
					</div>
					<div class="tab_content" id="tab4">
						<div class="form-group">
							<textarea rows="50" cols="80" class="form-control" id="goodsIntro" name="goodsIntro"></textarea>
					    	<script>CKEDITOR.replace('goodsIntro');</script>
					    </div>
					</div>
					<div class="tab_content" id="tab5">
						<div class="form-group">
							<textarea rows="50" cols="80" class="form-control" id="goodsPublisherComment" name="goodsPublisherComment"></textarea>
					    	<script>CKEDITOR.replace('goodsPublisherComment');</script>
					    </div>
					</div>
					<div class="tab_content" id="tab6">
						<div class="form-group">
							<textarea rows="50" cols="80" class="form-control" id="goodsRecommendation" name="goodsRecommendation"></textarea>
					    	<script>CKEDITOR.replace('goodsRecommendation');</script>
					    </div>
					</div>
				</div>
				<p align="right">
					<input type="submit" value="등록하기" class="btn btn-outline-primary btn-sm">
				</p>
				</div>
			</div>
		</form>
	</div>
</body>