<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 5/15/2021
  Time: 11:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<form method="post" action="register.jsp">
    Username <input type="text" name="username"><br/>
    Password <input type="password" name="password"><br/>
    EMail <input type="text" name="email"><br/>
    Gender <input type="radio" name="gender" value="male">Male<input type="radio" name="gender" value="female">female<br/>
    Date Of Birth <input type="text" name="birthDate"><br/>
    <input type="submit" value="Register">
</form>
<html>
<head>
    <title>validate</title>
</head>
<body>
<%-- todo 2: use el implicit object param to get request parameters- username and password
     todo 3: use c:set var="username" value="${param.username}" to variable set into session
--%>
<c:set var="username" value="${param.username}" scope="session"/>
<c:set var="password" value="${param.password}"/>
<%--todo 4: use c:choose ,c:when c:otherwise to validate username is "admin" and password is 123 --%>
<c:choose>
<c:when test="${username eq 'admin' && password eq '123'}">
    <%
        // if user is valid
                String remember=request.getParameter("rememberMe");
        if (remember!=null && remember.equals("1")){
            // step 1: create a cookie
            Cookie c1 = new Cookie("cUsername", request.getParameter("username"));
            Cookie c2 = new Cookie("cPassword", request.getParameter("password"));
            Cookie c3 = new Cookie("cRememberMe", request.getParameter("rememberMe"));
            // step 2: set cookie age
            c1.setMaxAge(5);
            c2.setMaxAge(5);
            c3.setMaxAge(5);
            // step 3: add into response
            response.addCookie(c1);
            response.addCookie(c2);
            response.addCookie(c3);
        }

    %>
    <%
        //if user is valid - create a session
    HttpSession session1= request.getSession();
    %>
    <%--todo 4.1: when username == admin and password 123 use c:url and c:param to make url = "welcome.jsp?username=admin"--%>
    <c:url var="url" value="welcome.jsp">
        <c:param name="username" value="admin"/>
    </c:url>
    <%-- todo 4.2.use c:redirect to url= welcome.jsp?username=admin--%>
    <c:redirect url="${url}"/>
</c:when>
    <%-- todo 5.: use c:otherwise-- else --%>
<c:otherwise>
    <%-- todo 5.1:use c:set to set a attribute name message="username password error" in request  --%>
    <c:set var="message" value="Username Password Erroe!!!" scope="request"/>
    <%--todo 5.2:use c:import to include login.jsp --%>
    <c:import url="login.jsp"/>
</c:otherwise>
</c:choose>





</body>
</html>
