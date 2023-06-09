<%--
  Created by IntelliJ IDEA.
  User: 18303
  Date: 2023/5/9
  Time: 10:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>My Dear Jsp</title>
</head>
<body>
<h1>Ger request parameter using EL </h1>
Name:${param.name}<br>
ID:${param.id}<br>
Subject : ${paramValues.subject[0]},${paramValues.subject[1]},${paramValues.subject[2]}
<h1> Get request header using El</h1>
Host :${header.host}
<h1> Get cookies using El</h1>
JSESSIONID :${cookie.JSESSIONID.value}
<!--<h1> Get request header using El</h1> -->
<h1> Get context init parameters El</h1>
<!-- 4 context parameters- driver,url,username,password-->
driver : ${initParam.driver}<br>
url : jdbc:sqlserver://localhost:1433;database=userdb;encrypt=false<br>
username :sa<br>
password :1906941979<br>
<h1>Get 4 scope variables-page,request,session and application using El Code</h1>
<%
    pageContext.setAttribute("attName", "in page");
// set in request,session and application

%>
Att Value in page :${pageScope.attName}<br>
Att Value in request :<br>
Att Value in session :<br>
Att Value in application :<br>
</body>
</html>
