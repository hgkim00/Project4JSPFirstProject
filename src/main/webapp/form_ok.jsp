<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  User: hyeongikim
  Date: 2022/11/04
  Time: 11:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
    PrintWriter Out = response.getWriter();

    String title = request.getParameter("title");
    String id = request.getParameter("id");
    String pw = request.getParameter("pw");
    String uname = request.getParameter("uname");
    String email = request.getParameter("email");
    String birth = request.getParameter("birth");
    String mobile = request.getParameter("mobile");
    String gender = request.getParameter("gender");
    String city = request.getParameter("city");
    String major = request.getParameter("major");
    String introduction = request.getParameter("introduction");
    String color = request.getParameter("color");
    String[] term = request.getParameterValues("term");
%>

<h2>입력하신 데이터</h2>
<h3>회원 개인 정보 내역</h3>
<div>
    제목: <%=title%><br>
    ID: <%=id%><br>
    PW: <%=pw%><br>
    이름: <%=uname%><br>
    이메일 주소: <%=email%><br>
    생년월일: <%=birth%><br>
    전화번호: <%=mobile%><br>
    성별: <%=gender%><br>
    거주하는 지역: <%=city%><br>
    자신 전공학부: <%=major%><br>
    소개글: <%=introduction%><br>
    좋아하는색: <%=color%><br>
    약관 동의 여부: <br>
    <%
        if (term == null) {
    %>

    <%= "모두 비동의하셨습니다" %>

    <%
        }
        else {
            for (int i=0; i<term.length; i++) {
    %>

    <%=term[i]%>
    <br>
    <%
            }
        }
    %>
</div>

</body>
</html>
