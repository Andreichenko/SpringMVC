<!DOCTYPE html>
<%--
  Created by IntelliJ IDEA.
  User: AlexFrei
  Date: 25.06.20
  Time: 20:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="page" tagdir="/WEB-INF/tags" %>

<page:template>
    <jsp:body>
        <%--Page count --%>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="breadcrumb"> Error Page
                        <small>Exception handler</small>
                    </h1>
                    <ol class="breadcrumb">
                        <li>
                            <a href="/index.html">Home</a>
                        </li>
                        <li class="active">Exception Handler</li>
                    </ol>
                </div>
            </div>
                <%-- /.row--%>

                <%--Content row--%>
            <div class="row">
                <div class="col-lg-12">
                    <p> This is message from ExceptionHandler</p>
                    <p>${exceptionMsg}</p>
                </div>
            </div>
                <%--/.row--%>

            <hr>
        </div>

    </jsp:body>
</page:template>
