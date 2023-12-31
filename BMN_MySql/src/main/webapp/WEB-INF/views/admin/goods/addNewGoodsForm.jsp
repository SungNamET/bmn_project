<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"
	isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />	
<!DOCTYPE html>

<meta charset="utf-8">
<head>
<script type="text/javascript">
  var cnt=0;
  function fn_addFile(){
	  if(cnt == 0){
		  $("#d_file").append("<br>"+"<input  type='file' name='main_image' id='f_main_image' />");	  
	  }else{
		  $("#d_file").append("<br>"+"<input  type='file' name='detail_image"+cnt+"' />");
	  }
  	
  	cnt++;
  }
  
  
  function fn_add_new_goods(obj){
		 fileName = $('#f_main_image').val();
		 if(fileName != null && fileName != undefined){
			 obj.submit();
		 }else{
			 alert("메인 이미지는 반드시 첨부해야 합니다.");
			 return;
		 }
		 
	}
</script>    
</head>

<BODY>
<div id="container" class="newGoods-container">
	<div id="content">
		<div class="newGoods-wrap">
			<form action="${contextPath}/admin/goods/addNewGoods.do" method="post"  enctype="multipart/form-data">
				<h1>새상품 등록창</h1>
				<div class="tab_container">
					<!-- 내용 들어 가는 곳 -->
					<div class="tab_container" id="container">
						<ul class="tabs">
							<li><a href="#tab1">상품정보</a></li>
							<li><a href="#tab2">상품소개</a></li>
							<li><a href="#tab3">상품이미지</a></li>
						</ul>
						<div class="tab_container">
							<div class="tab_content" id="tab1">
								<table >
							<tr >
								<td width=200 >상품분류</td>
								<td width=500><select name="goods_sort">
										<option value="건식" selected>건식
										<option value="습식">습식
									</select>
								</td>
							</tr>
							<tr >
								<td >상품이름</td>
								<td><input name="goods_title" type="text" size="40" /></td>
							</tr>
							
								<td >상품정가</td>
								<td><input name="goods_price" type="text" size="40" /></td>
							</tr>
							
							<tr>
								<td >상품판매가격</td>
								<td><input name="goods_sales_price" type="text" size="40" /></td>
							</tr>
							
							
							<tr>
								<td >상품 구매 포인트</td>
								<td><input name="goods_point" type="text" size="40" /></td>
							</tr>
							<tr>
								<td >제품 배송비</td>
								<td><input name="goods_delivery_price" type="text" size="40" /></td>
							</tr>
							<tr>
								<td >제품 도착 예정일</td>
								<td><input name="goods_delivery_date"  type="date" size="40" /></td>
							</tr>
							
							<tr>
								<td >상품종류</td>
								<td>
								<select name="goods_status">
								  <option value="best"  >베스트</option>
								  <option value="normal" selected >일반</option>
								</select>
								</td>
							</tr>
							<tr>
							 <td>
							   <br>
							 </td>
							</tr>
								</table>	
							</div>
							<div class="tab_content" id="tab2">
								<H4>상품소개</H4>
								<table>
									<tr>
										<td><textarea  rows="100" cols="80" name="goods_intro" style="margin-bottom: 20px;"></textarea></td>
								    </tr>
							    </table>
							</div>
						</div>
						<div class="tab_content" id="tab3">
							<h4>상품이미지</h4>
							<table >
								<tr>
									<td align="right">이미지파일 첨부</td>
						            
						            <td  align="left"> <input type="button"  value="파일 추가" onClick="fn_addFile()"/></td>
						            <td>
							            <div id="d_file">
							            </div>
						            </td>
								</tr>
							</table>
						</div>
						<div class="upDate-btn">
						<!--   <input  type="submit" value="상품 등록하기"> --> 
							<input  type="button" value="상품 등록하기"  onClick="fn_add_new_goods(this.form)">
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>

</BODY>	 