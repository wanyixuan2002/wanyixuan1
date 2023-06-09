<%@ page import="com.dabing.week11.Person" %>
<%@ page import="com.dabing.week11.Dog" %><%--
  Created by IntelliJ IDEA.
  User: 18303
  Date: 2023/5/5
  Time: 9:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%!
    private JspClass.dog dog;

    private static class dog {
        private String name;

        public void setName(String name) {
            this.name = name;
        }
    }
%><%
    com.dabing.week11.demo.Dog dog = new Dog();
    ((Dog) dog).setName("Tommy");
    Person person = new Person();
    person.setName("Evan");
    person.setDog(dog);

    pageContext.setAttribute("person", person);
%>
<h1>get person's dog name- using java code</h1>
<%
    Person p = (Person) request.getAttribute("person");
    Dog d = p.getDog();
    out.println(d.getName());
%>

<h1>get person's dog name- using EL code</h1>
${person.dog.name}

</body>
</html>
