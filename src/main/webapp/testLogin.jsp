<%--
  프로그램명 : testLogin.jsp
  기능 : longinForm에 전달받은 값이 회원인지를 판별하는 작업
  추가 : JSP, Servlet에서 작업
  http://localhost:8080/login_war_exploded/loginForm.jsp
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--중간에 처리하는 페이지는 HTML이 거의 없는 상태에서 진행--%>
<%--그래서 그냥 자바파일에서 작업하기도 함.--%>
<%
    //데이터베이스에서 회원정보를 조회해서 비교
    //이 곳에서는 가상의 회원을 등록해서 처리
    String id = "sample";   //회원이 등록된 가상의 데이터
    String pwd = "1234";
    String name = "홍길동";

    //체크확인
    if(id.equals(request.getParameter("id"))
            && pwd.equals(request.getParameter("pwd"))) { //아이디와 비밀번호가 등록된 자료와 동일한지 확인
        //등록확인이 되면, 해당정보를 세션에 저장
        //main폼 if에서 비교하는 변수로 세션을 생성
        session.setAttribute("loginUser", name);    //세션에 longinUser 변수에 회원이름을 저장
        //로그인 성공 시 메인페이지로 이동
        response.sendRedirect("main.jsp"); //호출페이지와 이동할 페이지가 다른 경우
    } else {
        //로그인 실패 시 로그인페이지로 이동
        response.sendRedirect("loginForm.jsp");
    }
%>
