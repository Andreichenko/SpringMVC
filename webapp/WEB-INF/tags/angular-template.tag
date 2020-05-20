<!DOCTYPE html>
<%@tag description="Template Site tag" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@attribute name="title" fragment="true" %>
<%@ taglib prefix="headerTemplate" tagdir="/WEB-INF/tags" %>

<html>
<head>

</head>

<body>

<headerTemplate:header-template/>

<jsp:doBody/>


<div class="container">
    <!-- Footer -->
    <footer>
        <div class="row">
            <div class="col-lg-12">
                <a href="<%=request.getContextPath()%>?languageVar=en">EN</a>
                <a href="<%=request.getContextPath()%>?languageVar=de">DE</a>
                <p>Copyright © SaschaFrei.de 2020</p>
            </div>
        </div>
    </footer>
</div>

</body>

</html>