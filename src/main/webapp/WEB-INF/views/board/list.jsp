<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp" %><!-- 상대경로 이용하여 파일 불러오기 ../ 상위폴더로 이동-->

<h1>List page</h1>
<hr/>
<table border="1">
	<tr>
		<th>번호</th>
		<th>제목</th>
		<th>내용</th>
	</tr>
	<c:forEach var="board" items="${boards}">	 
	<!-- for문으로 테이블에 데이터 넣기var=변수, items=model에 적혀있는 키값, -->
	<tr>
		<td><a href="/board/${board.id}">${board.id}</a></td>	<!-- 번호(id)에 하이퍼링크 걸어주기 -->
		<td>${board.title}</td>
		<td>${board.content}</td>
	</tr>
	</c:forEach>
</table>

<%@ include file="../layout/footer.jsp" %>
<!--  필요한 내용만 작성해서 깔끔해짐 -->