<!DOCTYPE html>
<%--
  Created by IntelliJ IDEA.
  User: aleksandrandreichenko
  Date: 7/20/20
  Time: 5:46 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="page" tagdir="/WEB-INF/tags" %>

<page:angular-template>
    <jsp:body>
        <%--page content--%>

        <div class="container">
                <%--page heading--%>
            <div class="col-lg-12">
                <h1 class="page-header" Class AngularJS>
                    <small>ng-class</small>
                </h1>
                <ol class="breadcrumb">
                    <li><a href="/index.html">Home</a> </li>
                    <li class="active">AngularJS ng-class</li>
                </ol>
            </div>
        </div>

        <%--/row--%>
        <%--content--%>
        <div class="row">
            <div class="col-lg-12">
                <style type="text/css">
                    .errorClass{
                        text-decoration: underline;
                        color: rebeccapurple;
                    }
                    .boldClass{
                        font-weight: bold;
                        background: white;
                    }
                </style>
                <script>
                    var app = angular.module('myApp', []);
                    app.controller('myClassController', function($scope){
                        $scope.hasSomeError = true;
                        //               $scope.hasSomeError = false;
                    });
                </script>

                <div ng-app="myApp" ng-controller="myClassController">
                    <h3> Sample class AngularJS</h3>
                    <p ng-class="{errorClass: true, boldClass: hasSomeError}"> Message for App</p>
                    In this example  tag < p > have attribute ng-class with enumeration style classes css. They have
                    $scope.hasSomeError = true or just name parameter is: true <br/>
                        <%--'< p ng-class="{errorClass: true, boldClass: hasSomeError} > < /p>" '--%>
                </div>
            </div>

        </div>
        <hr/>

        </div>

    </jsp:body>
</page:angular-template>