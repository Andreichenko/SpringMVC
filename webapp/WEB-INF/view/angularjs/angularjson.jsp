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
        <div class="panel-group" id="accordionOne">
        <div class="panel panel-default">
        <div class="panel-heading">
        <h4 class="panel-title">
        <a data-toggle="collapse" data-parent="#accordionOne" href="#collapseOne">
        <b>Result is JSON.stringify(simpleObject)</b>
        </a>
        </h4>
        </div>
        <div id="collapseOne" class="panel-collapse collapse in">
        <div class="panel-body">
        <code id = "resultStringify"></code>
        </div>
        </div>
        </div>
        <div class="panel-group" id="accordionTwo">
        <div class="panel panel-default">
        <div class="panel-heading">
        <h4 class="panel-title">
        <a data-toggle="collapse" data-parent="#accordionTwo" href="#collapseTwo">
        <b> Result is JSON.parse(jsonSimpleObject)</b>
        </a>
        </h4>
        </div>
        <div id="collapseTwo" class="panel-collapse collapse in">
        <div class="panel-body">
        <code id="resultParse"></code>
        </div>
        </div>
        </div>
