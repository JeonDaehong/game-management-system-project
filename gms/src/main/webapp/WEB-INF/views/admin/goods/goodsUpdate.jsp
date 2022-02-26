<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:if test="${sessionScope.loginId ne 'admin' }">
	<script>
		alert('ADMIN만 접근 가능한 페이지입니다.');
		location.href = '${contextPath}/main/main';
	</script>
</c:if>
<script>

	var regex = /^[0-9]+$/;

	function formValidationCheck(){
		
		var goodsName = document.getElementById('goodsName');
		if (goodsName.value == ""){
			alert("상품명은 반드시 입력해야 합니다.");
			goodsName.focus();
			return false;
		}
		
		var price = document.getElementById('price');
		if (price.value == ""){
			alert("가격은 반드시 입력해야 합니다.");
			price.focus();
			return false;
		}
		
		if (!price.value.match(regex)){
			alert("가격은 반드시 숫자로 입력해야 합니다.");
			price.focus();
			return false;
		}
		
		var discountRate = document.getElementById('discountRate');
		if (discountRate.value == ""){
			alert("할인률은 반드시 입력해야 합니다. (할인을 하지 않을 시, 0을 입력해주세요)");
			discountRate.focus();
			return false;
		}
		
		if (!discountRate.value.match(regex)){
			alert("할인률은 반드시 숫자로 입력해야 합니다.");
			discountRate.focus();
			return false;
		}
		
		var creCompany = document.getElementById('creCompany');
		if (creCompany.value == ""){
			alert("제작 회사는 반드시 입력해야 합니다.");
			creCompany.focus();
			return false;
		}
		
		var country = document.getElementById('country');
		if (country.value == ""){
			alert("국가는 반드시 입력해야 합니다.");
			country.focus();
			return false;
		}
		
		var remainCount = document.getElementById('remainCount');
		if (remainCount.value == ""){
			alert("입고 수량은 반드시 입력해야 합니다.");
			remainCount.focus();
			return false;
		}
		
		if (!remainCount.value.match(regex)){
			alert("입고 수량은 반드시 숫자로 입력해야 합니다.");
			remainCount.focus();
			return false;
		}
		
		var content = document.getElementById('content');
		if (content.value == ""){
			alert("상품 내용은 반드시 입력해야 합니다.");
			content.focus();
			return false;
		}
		
		return true;
		
}
		
</script>
<title>Insert title here</title>
</head>
<body>
<div class="nk-main">
        <!-- START: Breadcrumbs -->
        <div class="nk-gap-1"></div>
        <div class="container">
            <ul class="nk-breadcrumbs">
                <li><a href="${contextPath }/main/main">Home</a></li>
                <li><span class="fa fa-angle-right"></span></li>
                <li><a href="${contextPath }/goods/goodsList">Game Store</a></li>
                <li><span class="fa fa-angle-right"></span></li>
                <li><span>상품 수정</span></li>
            </ul>
        </div>
        <div class="nk-gap-1"></div>
        <!-- END: Breadcrumbs -->
        <div class="container">
            <div class="nk-store nk-store-checkout">
                <h3 class="nk-decorated-h-2"><span><span class="text-main-1">상품</span> 정보 수정</span></h3>
                <!-- START: Billing Details -->
                <div class="nk-gap"></div>
                <form action="${contextPath }/adminGoods/goodsUpdate" method="post" onsubmit="return formValidationCheck()" enctype="multipart/form-data" class="nk-form">
                    <table class="table nk-table" style="border-color: red;">
						<tr style="border-color: red;">
							<td style="border-color: red;"> 상품명 </td>
							<td style="border-color: red;"><input name="goodsName" id="goodsName" type="text" class="form-control" style="border-color: white;" maxlength="50" placeholder="최대 50자" value="${goodsDto.goodsName }"/></td>
						</tr>
						<tr style="border-color: red;">
							<td style="border-color: red;"> 상품 타입 </td>
							<td style="border-color: red;">
								<select id="goodsType" name="goodsType" class="form-control" style="border-color: white;">
									<option value="pc" <c:if test="${goodsDto.goodsType eq 'pc' }">selected</c:if>>PC</option>
									<option value="ps5" <c:if test="${goodsDto.goodsType eq 'ps5' }">selected</c:if>>PS5</option>
									<option value="xbox" <c:if test="${goodsDto.goodsType eq 'xbox' }">selected</c:if>>XBOX</option>
								</select>
							</td>
						</tr>
						<tr style="border-color: red;">
							<td style="border-color: red;"> 상품 장르 </td>
							<td style="border-color: red;">
								<select id="goodsGenre" name="goodsGenre" class="form-control" style="border-color: white;">
									<option value="rpg" <c:if test="${goodsDto.goodsType eq 'rpg' }">selected</c:if>>RPG</option>
									<option value="fps" <c:if test="${goodsDto.goodsType eq 'fps' }">selected</c:if>>PS5</option>
									<option value="advencher" <c:if test="${goodsDto.goodsType eq 'advencher' }">selected</c:if>>어드벤쳐</option>
									<option value="rts" <c:if test="${goodsDto.goodsType eq 'rts' }">selected</c:if>>RTS</option>
									<option value="fear" <c:if test="${goodsDto.goodsType eq 'fear' }">selected</c:if>>공포</option>
									<option value="datingSimulation" <c:if test="${goodsDto.goodsType eq 'datingSimulation' }">selected</c:if>>연애 시뮬레이션</option>
									<option value="etc" <c:if test="${goodsDto.goodsType eq 'etc' }">selected</c:if>>기타 장르</option>
								</select>
							</td>
						</tr>
						<tr style="border-color: red;">
							<td style="border-color: red;"> 가격 (원)</td>
							<td style="border-color: red;"><input name="price" id="price" type="text" class="form-control" style="border-color: white;" maxlength="5" placeholder="0 ~ 99999" value="${goodsDto.price }"/></td>
						</tr>
						<tr style="border-color: red;">
							<td style="border-color: red;"> 할인률 (%)</td>
							<td style="border-color: red;"><input name="discountRate" id="discountRate" type="text" class="form-control" style="border-color: white;" maxlength="2" placeholder="0 ~ 99" value="${goodsDto.discountRate }"/></td>
						</tr>
						<tr style="border-color: red;">
							<td style="border-color: red;"> 제작 회사 </td>
							<td style="border-color: red;"><input name="creCompany" id="creCompany" type="text" class="form-control" style="border-color: white;" maxlength="50" placeholder="최대 50자" value="${goodsDto.creCompany }"/></td>
						</tr>
						<tr style="border-color: red;">
							<td style="border-color: red;"> 제작 국가 </td>
							<td style="border-color: red;"><input name="country" id="country" type="text" class="form-control" style="border-color: white;" maxlength="20" placeholder="최대 20자" value="${goodsDto.country }"/></td>
						</tr>
						<tr style="border-color: red;">
							<td style="border-color: red;"> 남은 수량 </td>
							<td style="border-color: red;"><input name="remainCount" id="remainCount" type="text" class="form-control" style="border-color: white;" maxlength="4" value="${goodsDto.remainCount }"/></td>
						</tr>
						<tr style="border-color: red;">
							<td style="border-color: red;">상품 설명</td>
							<td style="border-color: red;" align="center">
								<textarea class="form-control" name="content" id="content" maxlength="3000" placeholder="3000자 이내" rows="12" style="border-color: white;">${goodsDto.content }</textarea>
							</td>
						</tr>
						<tr style="border-color: red;">
							<td style="border-color: red;"> 상품 이미지 </td>
							<td style="border-color: red;"> 이미지는 수정하실 수 없습니다.</td>
						</tr>
						<tr style="border-color: red;">
							<td style="border-color: red;"> 상품 이미지 2 </td>
							<td style="border-color: red;"> 이미지는 수정하실 수 없습니다.</td>
						</tr>
						<tr style="border-color: red;">
							<td style="border-color: red;"> 상품 이미지 3 </td>
							<td style="border-color: red;"> 이미지는 수정하실 수 없습니다.</td>
						</tr>
						<tr style="border-color: red;">
							<td style="border-color: red;"> 상품 이미지 4 </td>
							<td style="border-color: red;"> 이미지는 수정하실 수 없습니다.</td>
						</tr>
					</table> 
                <div class="nk-gap-2"></div>
                <p align="center">
                	<input type="hidden" name="num" value="${goodsDto.num }">
                	<input type="submit" value="정보 수정" class="nk-btn nk-btn-rounded nk-btn-color-main-1"> &nbsp;
	                <input type="button" value="뒤로가기" class="nk-btn nk-btn-rounded nk-btn-color-main-1" onclick="location.href='${contextPath}/goods/goodsList'">
                </p>
                </form>
                <blockquote class="nk-blockquote">
					<div class="nk-blockquote-author"><span>Game Management System 1.0</span></div>
				</blockquote>
            </div>
        </div>
    </div>
<div class="nk-gap-2"></div>
</body>
</html>