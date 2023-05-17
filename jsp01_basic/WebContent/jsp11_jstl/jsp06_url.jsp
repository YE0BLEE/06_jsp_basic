<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!--  
	url 관련 태그는 url 생성과 redirect 기능을 제공한다.
-->
<!-- https://www.google.com/search?q=varStatus&oq=varStatus&aqs=chrome..69i57j0i512l9.919j0j7&sourceid=chrome&ie=UTF-8 -->

<!-- https://search.daum.net/search?w=news&q=%EA%B9%80%EB%AF%BC%EC%9E%AC -->
<c:url var="search" value="https://search.daum.net/search">
	<c:param name="w" value="news"></c:param>
	<c:param name="q" value="김민재" />
</c:url>

<ul>
	<li><a href="${ search }">다음 뉴스에서 김민재 검색</a></li>
	<li><c:url value="jsp02_if.jsp"/></li>
	<li><c:url value="./jsp02_if.jsp"/></li>
</ul>

<c:redirect url="http://www.google.com" />




