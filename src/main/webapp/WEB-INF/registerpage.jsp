<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:genericpage>
    <jsp:attribute name="header">
         Register as New User
    </jsp:attribute>
    <jsp:attribute name="footer">
    </jsp:attribute>
    <jsp:body>
        <div style="margin-top: 5em;">
            <form name="login" action="${pageContext.request.contextPath}/fc/registercommand" method="POST">
                <div class="row mb-3">
                    <label class="col-sm-1 col-form-label" for="name">Name</label>
                    <div class="col-sm-4">
                        <input id="name" class="form-control" type="text" name="name" value="${param.name}" placeholder="Enter your name">
                    </div>
                </div>
                <div class="row mb-3">
                    <label class="col-sm-1 col-form-label" for="email">Email</label>
                    <div class="col-sm-4">
                        <input id="email" class="form-control" type="text" name="email" value="${param.email}" placeholder="Enter a valid email">
                    </div>
                </div>
                <div class="row mb-3">
                    <label class="col-sm-1 col-form-label" for="address">Address</label>
                    <div class="col-sm-4">
                        <input id="address" class="form-control" type="text" name="address" value="${param.address}" placeholder="Enter your address">
                    </div>
                </div>
                <div class="row mb-3">
                    <label class="col-sm-1 col-form-label" for="tele_number">Phone</label>
                    <div class="col-sm-4">
                        <input id="tele_number" class="form-control" type="text" name="tele_number" value="${param.tele_number}" placeholder="Enter your phone number">
                    </div>
                </div>
                <div class="row mb-3">
                    <label class="col-sm-1 col-form-label" for="password1">Password</label>
                    <div class="col-sm-4">
                        <input id="password1" class="form-control" type="password" name="password1"  value="${param.password1}"  placeholder="Enter your password">
                    </div>
                </div>
                <div class="row mb-3">
                    <label class="col-sm-1 col-form-label" for="password2">Password</label>
                    <div class="col-sm-4">
                        <input id="password2" class="form-control" type="password" name="password2" value="${param.password2}"  placeholder="Repeat the password">
                    </div>
                </div>

                <input class="btn btn-primary" type="submit" type="submit" value="Submit">
            </form>

            <c:if test="${requestScope.error != null }">
                <p style="color:red">
                        ${requestScope.error}
                </p>
            </c:if>
        </div>
    </jsp:body>
</t:genericpage>


