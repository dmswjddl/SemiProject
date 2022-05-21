<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 상세보기 </title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
 <script>

	  $(function(){
	
		  $('#category').change(function(){
				  
			   $.ajax({
					 type :'POST',
					 url : "changeCategory.do?categoryCode="+$(this).val(),
					 contentType: "application/TEXT; charset=UTF-8",
					// data: {"categoryCode":$(this).val()},
					 dataType: 'text',
					 success: function(result){
						 console.log(result);
						 $('#dCategoryCode').empty();
						 
						
						 var cateList=eval(result);
					
							 for(let i=0; i<cateList.length; i++){
								$('#dCategoryCode').append("<option value=" +cateList[i].dCategoryCode  + ">"+cateList[i].dName+"</option>");
							} 
					},
					 error: function(err) {
						alert('에러발생')
						console.log(err)
					}
					 
				 })
			 
		  })
	  }) 

</script>
</head>
<body>

<h1> 상품 상세보기 </h1>
<hr>

<form action="updateProduct.do" method="post"  enctype="multipart/form-data">
<input name="pNo" type="hidden" value="${product.pNo }"/>
<table border="1" cellpadding="0" cellspacing="0">
	
	<tr>
	<td bgcolor="lightblue" width="80">상품명</td>
	<td align="left"><input name="pName" type="text"
		value="${product.pName }" /></td>
	</tr>
	
	<tr>
	<td bgcolor="lightblue" width="80">상품가격</td>
	<td align="left"><input name="pPrice" type="text"
		value="${product.pPrice }" /></td>
	</tr>
	
	<tr>
	<td bgcolor="lightblue" width="80">상품상세설명</td>
	<td align="left"><input name="pDetail" type="text"
		value="${product.pDetail }" /></td>
	</tr>
	<tr>
	<td bgcolor="lightblue" width="80">상품수량</td>
	<td align="left"><input name="pCount" type="text"
		value="${product.pCount }" /></td>
	</tr>
	
	<tr>
	<td bgcolor="lightblue" width="80">상품색깔</td>
	<td align="left"><input name="pColor" type="text"
		value="${product.pColor }" /></td>
	</tr>
	
	
	<tr>
	<td bgcolor="lightblue">카테고리</td>
	
	<td><select name="categoryCode" id="category">
	<c:forEach items="${cateList}" var="cate">
	
		<c:if test="${ cate.categoryCode eq product.categoryCode }">
		<option value='${cate.categoryCode }' selected>${cate.categoryName }</option>
		</c:if>
		
		<c:if test="${ cate.categoryCode ne product.categoryCode }">
		<option value='${cate.categoryCode }'>${cate.categoryName }</option>
		</c:if>
		
	</c:forEach>
	</select>
	
	<select name="dCategoryCode" id="dCategoryCode">
	<c:forEach items="${dcateList }" var="dcate">
	<c:choose>
	<c:when test="${dcate.categoryCode eq cate.categoryCode }">
	<option value='${dcate.categoryCode }'>${dcate.dName }</option>
	</c:when>
	<c:otherwise>
	<option value='${dcate.categoryCode }'>${dcate.dName }</option>
	
	</c:otherwise>
	</c:choose>
	</c:forEach>
	
	</select>
	</td>
	</tr>

	<!-- #### 첨부파일을 보여주고자 한다면 -->
	 <tr>
	 	<td colspan="2" align="center">
	 	<a href='/semiProject/resources/upload/${product.storedFileName }'>${product.originFileName }</a><br/><br/><br/>
		<img width='500' height='370'
			src='/semiProject/resources/upload/${product.storedFileName }'>
	</td>
	</tr>
	
</table>

<input type="submit" value="상품수정">
<br/><br/>
</form>
<hr>


</body>
</html>