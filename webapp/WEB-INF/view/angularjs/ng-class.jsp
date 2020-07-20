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


    </jsp:body>
</page:angular-template>