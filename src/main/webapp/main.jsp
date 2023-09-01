<%--
  Created by IntelliJ IDEA.
  User: woori
  Date: 2023-08-18
  Time: 오후 12:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Bootstrap Example</title>
    <meta charset="utf-8">
    <%--반응형 웹 설정--%>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <%--부트스트랩의 스타일시트--%>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <%--부트스트랩의 JQuery--%>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<%--navbar(메뉴모양) navbar-expand-sm(메뉴효과) navbar-dark(색상)--%>
<nav class="navbar navbar-expand-sm navbar-dark bg-dark">
    <div class="container-fluid"> <%--내용을 가로형으로 작업하겠다고 설정--%>
        <a class="navbar-brand" href="javascript:void(0)">Logo</a> <%--회사로고이미지, 회사명--%>
        <%--삼색아이콘을 선택하면 메뉴항목을 표시 data-bs-target--%>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#mynavbar">
            <span class="navbar-toggler-icon"></span> <%--삼색선, 세로형일때 밑으로 펼쳐주는 역할--%>
        </button>
        <div class="collapse navbar-collapse" id="mynavbar"> <%--주메뉴항목--%>
            <ul class="navbar-nav me-auto">
<%
    if(session.getAttribute("loginUser") == null) { //세션에 loginUser라는 값이 없으면 로그인이 안 되어 있는 상태
%>
                <li class="nav-item"><%--메뉴항목--%>
                    <a class="nav-link" href="javascript:void(0)">회원가입</a>
                    <%--javascript:void(0) : 현재페이지--%>
                </li>


                <li class="nav-item"><%--로그인메뉴 클릭 시 해당페이지로 이동--%>
                    <a class="nav-link" href="loginForm.jsp">로그인</a>
                </li>
<%
    } else {
%>
                <li class="nav-item"> <%--로그아웃 메뉴 클릭 시 해당페이지로 이동--%>
                    <a class="nav-link" href="logout.jsp"><%=session.getAttribute("loginUser")%>님 로그아웃</a>
                </li>
<%
    }
%>
            </ul>
            <form class="d-flex">
                <input class="form-control me-2" type="text" placeholder="Search">
                <button class="btn btn-primary" type="button">Search</button>
            </form>
        </div>
    </div>
</nav>

<div class="container-fluid mt-3">
    <h3>Navbar Forms</h3>
    <p>You can also include forms inside the navigation bar.</p>
</div>
문제점 : 로그인과 로그아웃이 동시에 존재할 수 없다.<br>
로그인 상태일 때는 로그인(X), 로그아웃만 활성화<br>
로그인 전에는 로그인을 활성화, 로그아웃(X)<br>
세션에 사용자정보를 이용해서 로그인과 로그인 이전 상태를 판단
</body>
</html>



