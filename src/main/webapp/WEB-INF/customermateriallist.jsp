<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:genericpage>
    <jsp:attribute name="header">
         Material Page
    </jsp:attribute>
    <jsp:attribute name="footer">
    </jsp:attribute>

    <jsp:body>
        <h1>Hello ${sessionScope.email} </h1>
        You are now logged in as a Customer.
        Role: ${sessionScope.role}
        <p >
            <p><a href="fc/customermaterialpage">Materials</a>

        <c:forEach items="${requestScope.matList}" var="item">
            <p>${item}</p>
        </c:forEach>
        <!--Denne side skal designes/mockup-->



        </p>
    </jsp:body>

</t:genericpage>

