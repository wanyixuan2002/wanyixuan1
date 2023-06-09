<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 5/15/2021
  Time: 11:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Login</title>
</head>
<%
//read cookies
    Cookie[] allCookies=request.getCookies();
    String username = "",password="",rememberMeVal = "";
    if(allCookies!=null){
        //get one by one
        for(Cookie c:allCookies){
            if(c.getName().equals("cUsername")){
                //get value
                username=c.getValue();
            }
            if(c.getName().equals("cPassword")){
                //get value
                password=c.getValue();
            }
            if(c.getName().equals("cRemembers")){
                //get value
                rememberMeVal=c.getValue();
            }
        }
    }
%>
<body>
<%-- todo 6: use c:out to print message fron request --%>
<h2><c:out value="${message}"/> </h2>
<%--todo 1: use c:url to set url in action="validate.jsp" --%>
<form action="<c:url value="validate.jsp" />">
    Username : <input type="text" name="username" value="<%=username%>"><br>

    Password : <input type="password" name="password" value="<%=password%>"><br>

    <input type="checkbox" name="rememberMe" value="1" <%=rememberMeVal.equals("1")?"checked":""%> > RememberMe
<br>
    <input type="submit" value="Login"/>
</form>

</body>
</html>
