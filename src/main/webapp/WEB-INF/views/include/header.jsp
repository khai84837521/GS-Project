<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>GH SHOP</title>  
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/insertSearch.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/reset.css">  
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/main.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/sub.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">    
    <script src="${pageContext.request.contextPath}/resources/js/jquery-3.5.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/check.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/checkBox.js"></script>
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
    <script src="https://kit.fontawesome.com/dd43a0e2b4.js" crossorigin="anonymous"></script>
	<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/cart.css">
	<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/member.css">
	<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css">
	<script src="https://kit.fontawesome.com/dd43a0e2b4.js"
		crossorigin="anonymous"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/check.js"></script>
</head>
<!-- <script src="${pageContext.request.contextPath}/resources/js/jquery-3.5.1.min.js"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script> -->

<script type="text/javascript">
 	 	
 	// <input type="button" value="dup. check" class="dup"> ??????????????? 
 	// html ????????? ????????? ?????? ?????? => ??????
 	$(document).ready(function(){	
 		// ????????? ??????????????? 		
//  			alert("???????????????");
				// idCheck2.jsp??? ???????????? ?????? ??????  ???????????? ???????????? ????????? ??????, ????????? ???????????? ??????
			$.getJSON('${pageContext.request.contextPath}/mainRank',function(rdata){
					//#dupdiv ?????????  ????????? ?????? ??????
					$.each(rdata,function(index,item){
						$('#ranking').append("<div class='swiper-slide rankitem'>"+item.keyword+"</div>");						
					});					
				
			});	 		
 	});




 	/* ????????? ajax */
	$(document).ready(function(){	
	 	
		$.getJSON('${pageContext.request.contextPath}/test',function(dated){
				$.each(dated,function(index,item){
				
	$('#middle').attr("src",item.imagePath); //?????????
	$('.title').append(item.goodsNm); //?????????
	$('.del').append(item.fixedPrice+"???");//??????
	$('#middle').attr(index);//????????????

					});//each
// 				$(this).unbind();
				}); //json
				//???????????? ????????? ???????????? ??????
		});
	/* ??? ????????? ajax */
	
 </script>
 
 <body>
 <div id="mainLayout">
 
    <header id="header">
            <div id="util">
                <div class="innerContent flex">
                    <div class="qbtn">
                        <ul>
                            <li class="tab01">
                                <a href="">????????????<span class="icon_bookmark"></span></a>
                            </li>
                            <li class="tab02">
                                <a href="${pageContext.request.contextPath}/notice.jsp">GH SHOP CUSTOMER</a>
                            </li>
                        </ul>
                    </div>
                      <div class="util_menu">
                    	<c:choose>
                    	<c:when test ="${sessionScope.user.memId == null}">
	                    	<ul>
	                            <li><a href="${pageContext.request.contextPath}/login">?????????</a></li>
	                            <li><a href="${pageContext.request.contextPath}/join">????????????</a></li>
	                            <li onclick = "MSG()"><a href="${pageContext.request.contextPath}/login">???????????????</a></li>
	                            <li onclick = "MSG()"><a href="${pageContext.request.contextPath}/login">????????????</a></li>
	                        </ul>
                    	</c:when>
                    	<c:otherwise>
                    	<ul>
                            <li><a href="${pageContext.request.contextPath}/logout">????????????</a></li>
                            <li><a>${user.memNm}???</a></li>
                            <li><a href="${pageContext.request.contextPath}/mypage">???????????????</a></li>
                            <li><a href="${pageContext.request.contextPath}/board/flist">????????????</a></li>
                        </ul>
                    	</c:otherwise>
                    	</c:choose>
                    </div>
                </div>
            </div>
            <div id="mid">
                <div class="innerContent">
                    <div id="layout_side" class="mobile layout_side">
           
                        <div class="menuSide">
               
                            <!--aside_menu2-->

                            <div class="aside_navigation_wrap">
                                <div class="aside_title">????????????</div>
                                <!-- ++++++++ ???????????? ++++++++ -->
                                <ul id="categorySideMenu" class="menu">
                                    <li class="mitem category mitem_category mitemicon1">
                                        <a class="mitem_title" href="" target="_self"></a>
                                        <a class="mitem_goodsview" href="">
                                            ??????????????????
                                        </a>
                                    </li>
                                    <li class="mitem category mitem_category mitemicon1">
                                        <a class="mitem_title" href="" target="_self"></a>
                                        <a class="mitem_goodsview" href="">
                                            ??????????????????
                                        </a>
                                    </li>
                                    <li class="mitem category mitem_category mitemicon1">
                                        <a class="mitem_title" href="" target="_self"></a>
                                        <a class="mitem_goodsview" href="">
                                            ????????????
                                        </a>
                                    </li>
                                    <li class="mitem category mitem_category mitemicon3">
                                        <a class="mitem_title" href="" target="_self"></a>
                                        <a class="mitem_goodsview" href="">
                                            ??????
                                        </a>
                                    </li>
                                    <li class="mitem category mitem_category mitemicon1">
                                        <a class="mitem_title" href="" target="_self"></a>
                                        <a class="mitem_goodsview" href="">
                                            ????????????
                                        </a>
                                    </li>
                                    <li class="mitem category mitem_category mitemicon1">
                                        <a class="mitem_title" href="" target="_self"></a>
                                        <a class="mitem_goodsview" href="">
                                            ?????????
                                        </a>
                                    </li>
                                </ul>
                                <!-- ++++++++ //???????????? ++++++++ -->
                            </div>
                            <!--aside_navigation_wrap-->

                            <div class="right_cs">
                                <div class="tle">?????? ??????</div>
                                <b>070-123-4567</b>
                                <div class="info info1">
                                    ?????? : AM10:00 ~ PM17:00<br>
                                    ?????? : PM12:00 ~ PM1:00<br>
                                    ?????? ??? ????????? ??????
                                    <a href="" class="kakach"><img src="${pageContext.request.contextPath}/resources/images/kakach.jpg"></a>
                                </div>
                                <div class="tle">?????? ??????</div>
                                <div class="info info2">
                                    <img src="${pageContext.request.contextPath}/resources/images/qbnk.png">
                                    <strong>051-04542-5224-1</strong>
                                    ????????????????????????
                                </div>
                            </div>
                            <!-right_cs--->
                                <div class="aside_menu3">
                                    <ul>
                                        <li><a href="${pageContext.request.contextPath}/notice.jsp">????????????</a></li>
                                        <li><a href="">EVENT</a></li>
                                    </ul>
                                </div>
                                <!--aside_menu3-->

                        </div><!-- mobile -->
                        <div class="menuBG"></div>

                    </div>
                    <!--mobile layout_side-->

                    <h1 class="hlogo">
                        <a href="${pageContext.request.contextPath}/main">GH SH<span>O</span>P</a>
                    </h1>
					 <!-- ??????????????? -->
                            <table class="hot-Search">
								<tr>
									<td class="td1"><h2>????????? ?????? ??????</h2></td>
									<td class="td2">
										<div class="swiper rankwrap">
											<div id="ranking" class="swiper-wrapper">
												${searchDTO.k}
											</div>
										</div>									
									</td>
								</tr>
							</table>
							
   <script>
   /* ??????????????? ???????????? ???????????? */
      var swiper = new Swiper(".rankwrap", {
        direction: "vertical",
        autoplay: {
    		delay: 1000,
    		disableOnInteraction: false,
    	},
    	speed: 1000,
      });
    </script>
    
                    <div class="top_search">
                        <form name="frmSearchTop" id="frmSearchTop" action="${pageContext.request.contextPath}/sub" method="get" novalidate="novalidate" >
                            <input type="hidden"  value="" name="c">
                            <input type="hidden"  value="" name="l">
                            <input type="hidden"  value="" name="s">
                            <input type="hidden"  value="" name="e">
                            <input type="hidden"  value="" name="sK">
                            <fieldset>
                                <legend>?????????</legend>
                                <div class="top_search_cont">
                                    <div class="top_text_cont">
                                        <input type="text" id="search_form" name="keyword" class="top_srarch_text" title="????????????????????? ??????????????? ?????????" placeholder="????????????????????? ??????????????? ?????????" autocomplete="off"
                                        value="${countMav.value}">
                                        <input type="image" src="${pageContext.request.contextPath}/resources/images/search_bt.png" id="btnSearchTop" class="btn_top_srarch" title="??????" value="??????" alt="??????">
										
                    <!-- Side widget-->
                                    </div>
                                    <!-- //top_text_cont -->
                                </div>
                                <!-- //top_search_cont -->
                            </fieldset>
                        </form>
                        <!-- ???????????? ?????? -->
				                    <div class="card mb-4" id="r_search" style="display: none;">
				                        <div class="card-header">???????????????</div>
				                        <div class="card-body">
				                            <div class="row">
				                                <div class="col-sm-6">
				                                    <ul class="search-list">
				                                         <li ><a href="${pageContext.request.contextPath}/sub?c=&l=&keyword=?????????&s=&e=&sK=">?????????</a></li>
				                                         <li><a href="${pageContext.request.contextPath}/sub?c=&l=&keyword=??????&s=&e=&sK=">??????</a></li>
				                                         <li><a href="${pageContext.request.contextPath}/sub?c=&l=&keyword=?????????&s=&e=&sK=">?????????</a></li>
				                                    </ul>
				                                </div>
				                                <div class="col-sm-6">
				                                    <ul class="list-unstyled mb-0">
				                                       <li ><a href="${pageContext.request.contextPath}/sub?c=&l=&keyword=?????????&s=&e=&sK=">?????????</a></li>
				                                       <li><a href="${pageContext.request.contextPath}/sub?c=&l=&keyword=?????????&s=&e=&sK=">?????????</a></li>
				                                       <li><a href="${pageContext.request.contextPath}/sub?c=&l=&keyword=??????&s=&e=&sK=">??????</a></li>
				                                    </ul>
				                                </div>
				                            </div>
				                        </div>
				                        <div class="card-header" id="bottomcard" onclick="href='#'">???????????????</div>
				                    </div>
				             <!-- //???????????? ?????? -->
                  			  </div>

                    <div class="buttonArea">
                        <ul>                           
                            <li><a href="${pageContext.request.contextPath}/cart" class="cart">????????????<span id="cartCount2" class="count">0</span></a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div id="gnbw">
                <div class="innerContent">
                    <div id="categoryAll">
                        <a>
                            <div class="h_buger">
                                <span></span>
                                <span></span>
                                <span></span>
                            </div>
                            ??????????????????
                        </a>
                        <div class="categoryAll_abs">
                            <ul> 
                            	<!-- ???????????? -->
                                <li class="cate6">
                               
                                    <a href="${pageContext.request.contextPath}/sub?c=&l=&keyword=&s=&e=&sK=">
                                        <span class="ca_i">
                                            <img src="${pageContext.request.contextPath}/resources/images/ca_ii.png">
                                        </span>
                                        <span class="ca_t">????????????</span>
                                    </a>
                                </li>
                                <!-- ???????????? -->
                                <li class="cate0">
                                <!-- ????????? -->
                                    <a href="${pageContext.request.contextPath}/sub?c=a&l=A&keyword=&s=&e=&sK=">
                                        <span class="ca_i">
                                            <img src="${pageContext.request.contextPath}/resources/images/ca_i0.png">
                                        </span>
                                        <span class="ca_t">??????</span>
                                    </a>
	                                    <ol>
			                                <c:forEach items="${menuCategory}" var="CartegoryDTO">
			                                    <c:if test="${CartegoryDTO.cateCodeRef eq 'a'}">
	                                   			     <li><a href="${pageContext.request.contextPath}/sub?c=${CartegoryDTO.cateCode}&l=B&keyword=&s=&e=&sK=">${CartegoryDTO.cateName}</a></li>
				                                 </c:if>
			                                </c:forEach>
	                                    </ol>
                                </li>
                         	  <li class="cate2">
                                    <a href="${pageContext.request.contextPath}/sub?c=b&l=A&keyword=&s=&e=&sK=">
                                        <span class="ca_i">
                                            <img src="${pageContext.request.contextPath}/resources/images/ca_i2.png">
                                        </span>
                                        <span class="ca_t">??????/??????</span>
                                    </a>
                                     <ol>
                                     <c:forEach items="${menuCategory}" var="CartegoryDTO">
			                                    <c:if test="${CartegoryDTO.cateCodeRef eq 'b'}">
	                                   			     <li><a href="${pageContext.request.contextPath}/sub?c=${CartegoryDTO.cateCode}&l=B&keyword=&s=&e=&sK=">${CartegoryDTO.cateName}</a></li>
				                                 </c:if>
			                          </c:forEach>
                                    </ol>
                                </li>
                                <li class="cate3">
                                    <a href="${pageContext.request.contextPath}/sub?c=c&l=A&keyword=&s=&e=&sK=">
                                        <span class="ca_i">
                                            <img src="${pageContext.request.contextPath}/resources/images/ca_i3.png">
                                        </span>
                                        <span class="ca_t">?????????</span>
                                    </a>
                                    <ol>
                                     <c:forEach items="${menuCategory}" var="CartegoryDTO">
			                                    <c:if test="${CartegoryDTO.cateCodeRef eq 'c'}">
	                                   			     <li><a href="${pageContext.request.contextPath}/sub?c=${CartegoryDTO.cateCode}&l=B&keyword=&s=&e=&sK=">${CartegoryDTO.cateName}</a></li>
				                                 </c:if>
			                          </c:forEach>
                                    </ol>
                                </li>
                                <li class="cate4">
                                    <a href="${pageContext.request.contextPath}/sub?c=d&l=A&keyword=&s=&e=&sK=">
                                        <span class="ca_i">
                                            <img src="${pageContext.request.contextPath}/resources/images/ca_i4.png">
                                        </span>
                                        <span class="ca_t">?????????</span>
                                    </a>
                                    <ol>
                                     <c:forEach items="${menuCategory}" var="CartegoryDTO">
			                                    <c:if test="${CartegoryDTO.cateCodeRef eq 'd'}">
	                                   			     <li><a href="${pageContext.request.contextPath}/sub?c=${CartegoryDTO.cateCode}&l=B&keyword=&s=&e=&sK=">${CartegoryDTO.cateName}</a></li>
				                                 </c:if>
			                          </c:forEach>
                                    </ol>
                                </li>
                                <li class="cate5">
                                    <a href="${pageContext.request.contextPath}/sub?c=e&l=A&keyword=&s=&e=&sK=">
                                        <span class="ca_i">
                                            <img src="${pageContext.request.contextPath}/resources/images/ca_i5.png">
                                        </span>
                                        <span class="ca_t">?????????C</span>
                                    </a>
                                     <ol>
                                     <c:forEach items="${menuCategory}" var="CartegoryDTO">
			                                    <c:if test="${CartegoryDTO.cateCodeRef eq 'e'}">
	                                   			     <li><a href="${pageContext.request.contextPath}/sub?c=${CartegoryDTO.cateCode}&l=B&keyword=&s=&e=&sK=">${CartegoryDTO.cateName}</a></li>
				                                 </c:if>
			                          </c:forEach>
                                    </ol>
                                </li> 
                                 <li class="cate6">
                                    <a href="${pageContext.request.contextPath}/sub?c=f&l=A&keyword=&s=&e=&sK=">
                                        <span class="ca_i">
                                            <img src="${pageContext.request.contextPath}/resources/images/ca_i5.png">
                                        </span>
                                        <span class="ca_t">?????????</span>
                                    </a>
                                     <ol>
                                     <c:forEach items="${menuCategory}" var="CartegoryDTO">
			                                    <c:if test="${CartegoryDTO.cateCodeRef eq 'f'}">
	                                   			     <li><a href="${pageContext.request.contextPath}/sub?c=${CartegoryDTO.cateCode}&l=B&keyword=&s=&e=&sK=">${CartegoryDTO.cateName}</a></li>
				                                 </c:if>
			                          </c:forEach>
                                    </ol>
                                </li>
                                <li class="cate6">
                                    <a href="${pageContext.request.contextPath}/sub?c=f&l=A&keyword=&s=&e=&sK=">
                                        <span class="ca_i">
                                            <img src="${pageContext.request.contextPath}/resources/images/ca_i5.png">
                                        </span>
                                        <span class="ca_t">?????????</span>
                                    </a>
                                     <ol>
                                     <c:forEach items="${menuCategory}" var="CartegoryDTO">
			                                    <c:if test="${CartegoryDTO.cateCodeRef eq 'g'}">
	                                   			     <li><a href="${pageContext.request.contextPath}/sub?c=${CartegoryDTO.cateCode}&l=B&keyword=&s=&e=&sK=">${CartegoryDTO.cateName}</a></li>
				                                 </c:if>
			                          </c:forEach>
                                    </ol>
                                </li> 
                                 <li class="cate7">
                                    <a href="${pageContext.request.contextPath}/sub?c=h&l=A&keyword=&s=&e=&sK=">
                                        <span class="ca_i">
                                            <img src="${pageContext.request.contextPath}/resources/images/ca_i5.png">
                                        </span>
                                        <span class="ca_t">?????????3</span>
                                    </a>
                                     <ol>
                                     <c:forEach items="${menuCategory}" var="CartegoryDTO">
			                                    <c:if test="${CartegoryDTO.cateCodeRef eq 'h'}">
	                                   			     <li><a href="${pageContext.request.contextPath}/sub?c=${CartegoryDTO.cateCode}&l=B&keyword=&s=&e=&sK=">${CartegoryDTO.cateName}</a></li>
				                                 </c:if>
			                          </c:forEach>
                                    </ol>
                                </li> 
                                <li class="cate8">
                                    <a href="${pageContext.request.contextPath}/sub?c=i&l=A&keyword=&s=&e=&sK=">
                                        <span class="ca_i">
                                            <img src="${pageContext.request.contextPath}/resources/images/ca_i5.png">
                                        </span>
                                        <span class="ca_t">???????????????</span>
                                    </a>
                                     <ol>
                                     <c:forEach items="${menuCategory}" var="CartegoryDTO">
			                                    <c:if test="${CartegoryDTO.cateCodeRef eq 'i'}">
	                                   			     <li><a href="${pageContext.request.contextPath}/sub?c=${CartegoryDTO.cateCode}&l=B&keyword=&s=&e=&sK=">${CartegoryDTO.cateName}</a></li>
				                                 </c:if>
			                          </c:forEach>
                                    </ol>
                                </li>
                                <li class="cate9">
                                    <a href="${pageContext.request.contextPath}/sub?c=m&l=A&keyword=&s=&e=&sK=">
                                        <span class="ca_i">
                                            <img src="${pageContext.request.contextPath}/resources/images/ca_i5.png">
                                        </span>
                                        <span class="ca_t">?????????</span>
                                    </a>
                                     <ol>
                                     <c:forEach items="${menuCategory}" var="CartegoryDTO">
			                                    <c:if test="${CartegoryDTO.cateCodeRef eq 'm'}">
	                                   			     <li><a href="${pageContext.request.contextPath}/sub?c=${CartegoryDTO.cateCode}&l=B&keyword=&s=&e=&sK=">${CartegoryDTO.cateName}</a></li>
				                                 </c:if>
			                          </c:forEach>
                                    </ol>
                                </li>
                                <li class="cate10">
                                    <a href="${pageContext.request.contextPath}/sub?c=j&l=A&keyword=&s=&e=&sK=">
                                        <span class="ca_i">
                                            <img src="${pageContext.request.contextPath}/resources/images/ca_i5.png">
                                        </span>
                                        <span class="ca_t">??????</span>
                                    </a>
                                     <ol>
                                     <c:forEach items="${menuCategory}" var="CartegoryDTO">
			                                    <c:if test="${CartegoryDTO.cateCodeRef eq 'j'}">
	                                   			     <li><a href="${pageContext.request.contextPath}/sub?c=${CartegoryDTO.cateCode}&l=B&keyword=&s=&e=&sK=">${CartegoryDTO.cateName}</a></li>
				                                 </c:if>
			                          </c:forEach>
                                    </ol>
                                </li> 
                                <li class="cate11">
                                    <a href="${pageContext.request.contextPath}/sub?c=k&l=A&keyword=&s=&e=&sK=">
                                        <span class="ca_i">
                                            <img src="${pageContext.request.contextPath}/resources/images/ca_i5.png">
                                        </span>
                                        <span class="ca_t">??????</span>
                                    </a>
                                     <ol>
                                     <c:forEach items="${menuCategory}" var="CartegoryDTO">
			                                    <c:if test="${CartegoryDTO.cateCodeRef eq 'k'}">
	                                   			     <li><a href="${pageContext.request.contextPath}/sub?c=${CartegoryDTO.cateCode}&l=B&keyword=&s=&e=&sK=">${CartegoryDTO.cateName}</a></li>
				                                 </c:if>
			                          </c:forEach>
                                    </ol>
                                </li>  
                                <li class="cate12">
                                    <a href="${pageContext.request.contextPath}/sub?c=i&l=A&keyword=&s=&e=&sK=">
                                        <span class="ca_i">
                                            <img src="${pageContext.request.contextPath}/resources/images/ca_i5.png">
                                        </span>
                                        <span class="ca_t">??????/??????</span>
                                    </a>
                                     <ol>
                                     <c:forEach items="${menuCategory}" var="CartegoryDTO">
			                                    <c:if test="${CartegoryDTO.cateCodeRef eq 'i'}">
	                                   			     <li><a href="${pageContext.request.contextPath}/sub?c=${CartegoryDTO.cateCode}&l=B&keyword=&s=&e=&sK=">${CartegoryDTO.cateName}</a></li>
				                                 </c:if>
			                          </c:forEach>
                                    </ol>
                                </li> 
                            </ul>
                        </div>

                    </div>
                    <div class="gnbMenu">
                        <ul>
                            <li><a href="${pageContext.request.contextPath}/sub_new" >NEW</a></li>
                            <li><a href="${pageContext.request.contextPath}/sub_best">TOP 100</a></li>
                        </ul>
                    </div>
                  
                </div>
            </div>
        </header><!-- header -->
        