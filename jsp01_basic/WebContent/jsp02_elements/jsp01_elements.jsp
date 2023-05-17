<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!--  
    JSP 구성 요소
    
    1. 디렉티브: Driective, 지시자(어)
    
      디렉티브는 JSP페이지에 대한 설정 정보를 저장(지시)할 때 사용한다.
      '< %@ 디렉티브이름 속성="값" ... % >' 의 형태로 선언한다.
      
      JSP가 제공하는 디렉티브
      a. page : jsp페이지에 대한 정보를 제공, jsp가 생성하는 문서타입, 
                버퍼크기, 에러페이지 등.. jsp에서 필요한 기본정보를 제공
      b. tagLib : jsp페이지에서 사용할 tagLib를 지정
      c. include : jsp페이지의 특정영역으로 다른 jsp페이지를 불러올 때..
                   Header, Footer 처럼 고정된 페이지를 공통으로 사용하는 페이지를 로딩
                   
    2. 스크립트: Script
    
      jsp에서 jsp파일을 동적으로 생성하기 위해 사용되는 것으로 스트립트 요소를 사용하면
      사용자가 jsp페이지에 입력한 정보를 DB에 저장할 수 있고 DB에서 데이터를 읽어서 출력할 수 있다.
      
      스크립트를 사용하면 java가 제공하는 다양한 기능들을 사용할 수 있다. 
      jsp는 스크립트언어라고 불리는데 그 이유가 이러한 스크립트 코드를 제공하기 때문이다.
      
      jsp의 스크립트 요소
      a. 스크립트릿 : < % % >, java코드를 선언한다.
      b. 표현식 : < %= % >, 지정된 변수나 메서드의 결과를 출력한다.
      c. 선언식 : < %! % >, java의 변수나 메서드를 선언한다.
    
    3. 기본객체: implicit object 내장객체
    
      JSP는 웹애플리케이션 프로그래밍을 하는데 필요한 기능을 제공해 주는 기본객체를
      제공한다. 이 기본객체는 application, session, page, request, response 등 기본으로
      제공되는 객체를 말한다. 이러한 객체들은 각각의 객체마다 고유한 속성 또는 기능(메서드)을
      제공하는데, 요청된 파라미터를 읽거나 응답된 결과를 설정, 세션정보 등의 처리..
      웹애플리케이션에서 필요한 기능을 제공한다.
      
      a. application : 웹애플리케이션의 정보를 저장
      b. session : HTTP 세션정보를 저장하는 객체
      c. page : jsp페이지의 정보를 저장
      d. request : 웹브라우저가 웹서버에 요청하는 정보를 전달하는 객체
      e. response : 웹서버에 요청된 결과를 응답해주는 역할을 하는 객체
      d. out : DOM을 출력하는 스트림객체  
    
    4. 표현언어: Expression Language, EL
    5. 정적인 데이터 
    6. 표준액션태그: Action Tag
    7. 커스텀태그: Custom Tag
    8. 표준라이브러리:JSTL
-->

</body>
</html>










