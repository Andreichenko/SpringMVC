<!DOCTYPE html>
<%--
  Created by IntelliJ IDEA.
  User: AlexFrei
  Date: 04.06.20
  Time: 16:32
  To change this template use File | Settings | File Templates.
--%>


<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="page" tagdir="/WEB-INF/tags" %>

<page:template>
    <jsp:body>
        <%--Page Content--%>
        <div class="container">
        <!-- Page Heading/Breadcrumbs -->
        <div class="row">
        <div class="col-lg-12">
        <h1 class="page-header">JSON Stringify
        <small>examples of JSON</small>
        </h1>
        <ol class="breadcrumb">
        <li><a href="index.html">Home</a>
        </li>
        <li class="active">Example JSON.stringify</li>
        </ol>
        </div>
        </div>
        <!-- /.row -->

        <c:url value="/uploadFile" var="fileUploadControllerURL" />


        <pre>
        <b>1. Object in JavaScript</b>

        <code>
        var simpleObject = {
        title: 'Simple JS Object title',
        developer: 'AlexFrei'
        };
        var jsonSimpleObject = JSON.stringify(simpleObject);
        (in a script will be used JSON.stringify(simpleObject, null, 0),
        where 0 - not formatted output, 1 - the formatted output.
        var simpleObjectParsed = JSON.parse(jsonSimpleObject);
        document.getElementById("resultStrigify").innerHTML = jsonSimpleObject;
        document.getElementById("resultParse").innerHTML = simpleObjectParsed.title;
        </code>
        </pre>