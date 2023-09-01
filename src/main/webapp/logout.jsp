<%--
  프로그램명 : logout.jsp
  기능 : 세션에 저장된 정보를 삭제
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    session.invalidate();   //세션삭제, 해당세션 ID의 모든 변수를 삭제
%>
<script>
    alert("로그아웃이 되었습니다.");
    location.href="main.jsp";   //redirect와 동일한 기능(다른 페이지로 이동)
</script>
</body>
</html>
