<%--
  Created by IntelliJ IDEA.
  User: 18303
  Date: 2023/5/5
  Time: 8:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    //pageContext.setAttribute("attName","in page");
    request.setAttribute("attName", "in request");
    session.setAttribute("attName", "in session");
    application.setAttribute("attName", "in Application");
%>
<h1>set Attribute from 4 Scopes</h1>
Att in:<%=pageContext.getAttribute("attName")%><br>
Att in:<%=request.getAttribute("attName")%><br>
Att in:<%=session.getAttribute("attName")%><br>
Att in:<%=application.getAttribute("attName")%><br>

<h2> Find Attribute (not Get)-search in page-->request-->session-->application-->???</h2>
Find Att : <%=pageContext.findAttribute("attName")%><!-- which one-->
<h1> El example</h1>


${attName}<!-- what is output-->
<h1>get(not find) attribute using BL Code</h1>
Att in: ${pageScope.attName}<br><!--pagecontext.getAttribute("attName")-->
Att in: ${requestScope.attName}<br>
Att in: ${sessionScope.attName}<br>
Att in: ${applicationScope.attName}<br>

</body>
</html>
