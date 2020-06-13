<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="page" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<html>
<head>
    <meta charset="utf-8">
    <title>Login Page</title>
    <spring:url value="/resources/css/bootstrap.css" var="bootstrap" />
    <spring:url value="/resources/css/signin.css" var="signin" />
    <link href="${bootstrap}" rel="stylesheet" />
    <link href="${signin}" rel="stylesheet" />
</head>
body>
<form name="form" action="j_spring_security_check" method="post" class="form-signin">
    <security:authorize access="hasAnyRole('ROLE_ADMIN','ROLE_SUPER_USER', 'ROLE_USER')" var="isUSer"/>
    <font size="2" color="red">
        <c:if test="${not isUSer}">
            <c:if test="${empty param.error}">
                please login
            </c:if>
        </c:if>
    </font>