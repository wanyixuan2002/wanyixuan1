<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 5/15/2021
  Time: 11:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Welcome</title>
</head>
<body>
<h2>Welcome,<%-- todo 4.2.1 use c:out to print username from parammeter --%>
<c:out value="${username}"/>

    <from>
    <br>    <input type="submit" value="Logout" name="logout"/>
    </from>
<c:if test="${! empty param.logout and param.logout eq 'Logout'}">
    ${pageContext.session.invalidate()}<!-- kill the session right now-->
    <c:redirect url="login.jsp"/>
</c:if>
</h2>
<%--
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <h1> Session info </h1>
Session ID :${pageContext.session.id}<!--session.getId()--><br>
Creation Time: <fmt:formatDate type="both" dateStyle="long" timeStyle="long"
                               value="<%=new Date(session.getCreationTime())%>"/>
<br>
Last Accessed Time:<fmt:formatDate type="both" dateStyle="long" timeStyle="long"
                                   value="<%=new Date(session.getLastAccessedTime())%>"/>
<br>
Max Inactive Interval:${pageContext.session.maxInactiveInterval/60}(min)<!--session.getMaxInactiveInterval()--><br>

    <h1> Seesion info </h1>
Session ID :${pageContext.session.id}<!--session.getId()--><br>
Creation Time: ${pageContext.session.creationTime}<!--session.getCreationTime()--><br>
Last Accessed Time:${pageContext.session.lastAccessedTime}<!--session.getlastAccessedTime--><br>
Max Inactive Interval:${pageContext.session.maxInactiveInterval}<!--session.getMaxInactiveInterval()--><br>
--%>
</body>
</html>
