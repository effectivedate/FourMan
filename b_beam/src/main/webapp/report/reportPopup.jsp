<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<title>신고</title>
</head>
<body>
<div>
	<h2>신고</h2>
</div>
<div>
	<table>
		<tr>
			<td>피신고자</td>
			<td>김아무개</td>
		</tr>
		<tr>
			<td>신고자</td>
			<td>${mbno}</td>
		</tr>
		<tr>
			<td>신고분류</td>
			<td>${rpcate}</td>
		</tr>
		<tr>
			<td>신고종류</td>
			<td>
				<select id="rpcate">
					<option value="">분류를 선택해주세요</option>
					<option value="F">폭언/욕설</option>
					<option value="A">홍보/도박/외부사이트</option>
					<option value="P">외설/음란</option>
				</select>
			</td>
		</tr>
		<tr>
			<td>신고내용</td>
			<td><input type="text"></td>
		</tr>
	</table>
	<button onclick="rpt();">신고하기</button>
	<button onclick="window.close();">취소하기</button>
</div>
<script>
function rpt(){
	if($('#rpcate').val()==""){
		alert('신고종류를 선택해주세요!');
		return;
	}else{
		if (confirm('정말 신고하시겠습니까?')) {
			var rpcate = $('#rpcate').val();
			var nocate = '${cate}' + 'no';
			$.ajax({
				type: "POST",
				url: "${pageContext.request.contextPath}/report/reportAction.do",
				data: {nocate:e,'rpcate':rpcate,'mbno2':'${mbno2}'},
				dataType: "json",
				success: function(response) {
					if (response.success) {
						alert("신고되었습니다.");
						window.close();
					}
				},
				error: function(request, status, error) {
					alert("code : "+request.status+"\n"+"message : " +request.responseText+"\n"+"error : "+ error);
				}
			});
			
		}else{
			return;
		}
	}
	
}

</script>
</body>
</html>