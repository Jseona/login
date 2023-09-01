<%--
  파일명 : loginForm.jsp
  기능 : 로그인 입력폼 페이지
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Bootstrap Example</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

<div class="container mt-3">
    <h2>로그인</h2>
    <form action="testLogin.jsp"><%--입력폼의 내용을 testLogin에 전달해서 로그인 확인 작업을 진행--%>
        <div class="mb-3 mt-3">
            <label for="id">아이디:</label>
            <input type="text" class="form-control" id="id" placeholder="아이디를 입력하세요." name="id">
        </div>
        <div class="mb-3">
            <label for="pwd">비밀번호:</label>
            <input type="password" class="form-control" id="pwd" placeholder="비밀번호를 입력하세요." name="pwd">
        </div>

        <button type="submit" class="btn btn-primary">로그인</button>
    </form>
</div>

</body>
</html>

