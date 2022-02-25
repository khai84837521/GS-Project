
   
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
	
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>GH SHOP</title>
 <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/reset.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/admin.css">
    <script src="${pageContext.request.contextPath}/resources/js/jquery-3.5.1.min.js"></script>
<script src="/resources/ckeditor/ckeditor.js"></script>

</head>


<body>

  <%@include file="../inc/head.jsp"%>
        <!--  left menu -->
  <%@include file="../inc/left.jsp"%>


         <%@include file="../inc/content.jsp"%>


            <form name="flist" class="local_sch01 local_sch">
                <input type="hidden" name="save_stx" value="">

                <label for="sca" class="sound_only">분류선택</label>
                <select name="sca" id="sca">
                    <option value="">전체분류</option>
                    <option value="">분류1</option>
                    <option value="">분류2</option>
                </select>

                <label for="sfl" class="sound_only">검색대상</label>
                <select name="sfl" id="sfl">
                    <option value="it_name" selected="selected">상품명</option>
                    <option value="it_id">상품코드</option>
                    <option value="it_maker">제조사</option>
                    <option value="it_origin">원산지</option>
                    <option value="it_sell_email">판매자 e-mail</option>
                </select>

                <label for="stx" class="sound_only">검색어</label>
                <input type="text" name="stx" value="" id="stx" class="frm_input">
                <button type="submit" value="검색" class="btn_submit">검색</button>
            </form>






			<div id="listdiv">
				<!-- 카테고리사용법
				insert into goods_category (cateName,cateCode) values('카테고리1','300');
				insert into goods_category (cateName,cateCode,cateCodeRef) values('카테고리3-1','301','300');
				insert into goods_category (cateName,cateCode,cateCodeRef) values('카테고리3-2','302','300');
			 -->

				<form role="form" method="post" autocomplete="off" enctype="multipart/form-data" action="/aProduct/productInsertPro">
							<div class="inputArea">
						<label>1차 분류</label> <select class="category1"></select> <label>2차
							분류</label> <select class="category2" name="cateCode"></select>
					</div>

					<div class="inputArea">
					<label>상품명</label> 
					 <input type="text" name ="goodsNm">
					
							
							
							<label for="makerNm">제조사</label>
							 <input type="text" name ="makerNm">
						
						<label
							for="originNm">원산지</label> 
							 <input type="text" name ="originNm">
					</div>

					<div class="inputArea">
						<label for="goodsModelNo">모델명</label>
								 <input type="text" name ="goodsModelNo">
							
							 <label for="goodsPrice">상품가격</label>
								 <input type="number" name ="goodsPrice">
						 <label
							for="fixedPrice">정가</label> 
							 <input type="number" name ="fixedPrice">
							
					</div>

					<div class="inputArea">
						<label for="totalStock">상품수량</label> 
							 <input type="number" name ="totalStock">

					</div>
				<div class="inputArea">
						<label for="goodsWeight">상품 무게</label> 
							 <input type="number" name ="goodsWeight">

					</div>
				<!-- 	<div class="inputArea">
						<label for="salesStartYmd">상품 판매 시작일 (YYMMDD)</label> 
							 <input type="text" name ="salesStartYmd">
					</div> -->
				<div class="inputArea">
						<label for="shortDescription">짧은 설명</label> 
							 <input type="text" name ="shortDescription">

					</div>
					<div class="inputArea">
						<label for="goodsMustInfo">상품 설명</label> 
							 <input type="text" name ="goodsMustInfo">

					</div>
					

				
					<div class="inputArea">
						<label for="memo">메모</label> 
							 <input type="text" name ="memo">

					</div>
				
				
					<div class="inputArea">
						<label for="makeYmd">제조일</label>
						<input type="date" name ="makeYmd">
					</div>

				<div class="inputArea">
				
						<label for="goodsDescription">내용</label>
						<textarea rows="4" cols="50" name ="goodsDescription"></textarea>
						
	
						</div>
												<script>
							 var ckeditor_config = {
							   resize_enaleb : false,
							   enterMode : CKEDITOR.ENTER_BR,
							   shiftEnterMode : CKEDITOR.ENTER_P,
							   filebrowserUploadUrl : "/aProduct/ckUpload"
							 };
							 
							 CKEDITOR.replace("goodsDescription", ckeditor_config);
							</script>


						<div class="inputArea">
							<label for="imagePath">썸네일 등록</label> <input type="file" id="imagePath"
								name="file" />
							<div class="select_img">
								<img src="" />
							</div>
			
							<script>
								$("#imagePath").change(
										function() {
											if (this.files && this.files[0]) {
												var reader = new FileReader;
												reader.onload = function(data) {
													$(".select_img img").attr("src",
															data.target.result).width(500);
												}
												reader.readAsDataURL(this.files[0]);
											}
										});
							</script>
						</div>
			
			
					</div>
			
								<div class="inputArea">
									<button type="submit" id="adBtn" class="adBtn">등록</button>
								</div>
			
							</form>
			
						</div>
			
			</div>
			
				
	<!--  seller_wrap  -->



	<script>
// 컨트롤러에서 데이터 받기
var jsonData = JSON.parse('${category}');
console.log(jsonData);
var cate1Arr = new Array();
var cate1Obj = new Object();
// 1차 분류 셀렉트 박스에 삽입할 데이터 준비
for(var i = 0; i < jsonData.length; i++) {
 
 if(jsonData[i].level == "1") {
  cate1Obj = new Object();  //초기화
  cate1Obj.cateCode = jsonData[i].cateCode;
  cate1Obj.cateName = jsonData[i].cateName;
  cate1Arr.push(cate1Obj);
 }
}
// 1차 분류 셀렉트 박스에 데이터 삽입
var cate1Select = $("select.category1")
for(var i = 0; i < cate1Arr.length; i++) {
 cate1Select.append("<option value='" + cate1Arr[i].cateCode + "'>"
      + cate1Arr[i].cateName + "</option>"); 
}
$(document).on("change", "select.category1", function(){
	 var cate2Arr = new Array();
	 var cate2Obj = new Object();
	 
	 // 2차 분류 셀렉트 박스에 삽입할 데이터 준비
	 for(var i = 0; i < jsonData.length; i++) {
	  
	  if(jsonData[i].level == "2") {
	   cate2Obj = new Object();  //초기화
	   cate2Obj.cateCode = jsonData[i].cateCode;
	   cate2Obj.cateName = jsonData[i].cateName;
	   cate2Obj.cateCodeRef = jsonData[i].cateCodeRef;
	   
	   cate2Arr.push(cate2Obj);
	  }
	 }
	 
	 var cate2Select = $("select.category2");
	 
	 /*
	 for(var i = 0; i < cate2Arr.length; i++) {
	   cate2Select.append("<option value='" + cate2Arr[i].cateCode + "'>"
	        + cate2Arr[i].cateName + "</option>");
	 }
	 */
	 
	 cate2Select.children().remove();
	 $("option:selected", this).each(function(){
	  
	  var selectVal = $(this).val();  
	  cate2Select.append("<option value='" + selectVal + "'>전체</option>");
	  for(var i = 0; i < cate2Arr.length; i++) {
	   if(selectVal == cate2Arr[i].cateCodeRef) {
	    cate2Select.append("<option value='" + cate2Arr[i].cateCode + "'>"
	         + cate2Arr[i].cateName + "</option>");
	   }
	  }
	  
	 });
	 
	});
</script>
    <script>
        $(document).ready(function() {
            $(".seller_menu_tit").click(function() {
                $(".seller_menu_con").removeClass('on');
                $(this).parent().find(".seller_menu_con").toggleClass('on');
            });
        });
    </script>
</body>
</html>
