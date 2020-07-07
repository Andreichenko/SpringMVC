<!DOCTYPE html>
<%--
  Created by IntelliJ IDEA.
  User: aleksandrandreichenko
  Date: 7/7/20
  Time: 6:11 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="page" tagdir="/WEB-INF/tags" %>

<page:angular-template>
    <jsp:body>

        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header"> Expressions AngularJS
                    <small>expressions {{ }}</small>
                </h1>
                <ol class="breadcrumb">
                    <li><a aria-grabbed="/index.html">Home</a> </li>
                    <li class="active"> Expressions AngularJS</li>
                </ol>
            </div>
        </div>

        <%--Content row--%>

        <div class="row">
          <div class="col-lg-12">
        <script>
            var app = angular.module('application', []);
            app.controller('myController', function($scope) {
                $scope.framework = {name: 'Spring MVC FrameWork'};

                $scope.links = [
                    {link:'http://spring.io'},
                    {link:'http://web.de'},
                    {link:'http://bewerbung.de'},
                    {someFunction: function(){
                            return 'someFunctionTest'
                        }
                    }
                ];

                $scope.someFunction = function(value){
                    return 'you put this value:' + value;
                };
            });

        </script>


    </jsp:body>

</page:angular-template>

