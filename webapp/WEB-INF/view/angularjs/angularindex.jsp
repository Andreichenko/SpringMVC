<!DOCTYPE html>
<%--
  Created by IntelliJ IDEA.
  User: AlexFrei
  Date: 04.06.20
  Time: 17:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="page" tagdir="/WEB-INF/tags" %>


<page:template>
    <jsp:body>
        <!-- Page Content -->
        <div class="container">

            <!-- Page Heading/Breadcrumbs -->
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">List of topics for AngularJS
                        <small>Content of examples</small>
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="/index.html">Home</a>
                        </li>
                        <li class="active">List of topics for AngularJS</li>
                    </ol>
                </div>
            </div>
            <!-- /.row -->

            <c:url value="/uploadFile" var="fileUploadControllerURL" />
            <!-- Content Row -->
            <div class="row">

                <div class="col-lg-12">
                    <div>
                        <h3>AngularJS stringify and parse</h3>
                        <a href="/angularjson.html">Objects, arrays in JS, functions stringify and parse</a>
                    </div>
                    <div>
                        <h3>AngularJS Expressions</h3>
                        <a href="/expressions.html">Example of expressions in AngularJS</a>
                    </div>
                    <div>
                        <h3>AngularJS ng-model</h3>
                        <a href="/ng-bind-model.html">Example ng-model, ng-bind</a>
                    </div>
                    <div>
                        <h3>AngularJS ng-class</h3>
                        <a href="/ng-class.html">Directive ng-class</a>
                    </div>
                    <div>
                        <h3>AngularJS ng-click, ng-show</h3>
                        <a href="/ng-click-show.html">Directives ng-click, ng-show</a>
                    </div>
                    <div>
                        <h3>AngularJS ng-if, ng-switch</h3>
                        <a href="/ng-if-switch.html">Directives ng-if, ng-switch</a>
                    </div>
                    <div>
                        <h3>AngularJS ng-init</h3>
                        <a href="/ng-init.html">Directive ng-init</a>
                    </div>
                    <div>
                        <h3>AngularJS ng-repeat</h3>
                        <a href="/ng-repeat.html">Directive ng-repeat</a>
                    </div>
                    <div>
                        <h3>AngularJS two way binding</h3>
                        <a href="/two-way-binding.html">Two way binding objects and AngularJS models.</a>
                    </div>
                    <div>
                        <h3>AngularJS Dependency Injection</h3>
                        <a href="/angularDI.html">(Dependency Injection) in AngularJS.</a>
                    </div>
                    <div>
                        <h3>AngularJS Controllers</h3>
                        <a href="/ng-controller.html">Controller ng-controller AngularJS. Inheritance of controllers.</a>
                    </div>
                    <div>
                        <h3>AngularJS Filters</h3>
                        <a href="/filters.html"> AngularJS filters. Angular ng-repeat filter and my own filters.</a>
                    </div>
                    <div>
                        <h3>AngularJS form validation</h3>
                        <a href="/validation.html">Angular form validation. Properties: invalid, valid, touched, pristine, dirty.</a>
                    </div>
                    <div>
                        <h3>AngularJS routing and templates</h3>
                        <a href="/routing.html"> Routing и templates in application AngularJS. Usage ngRoute, routeProvider.</a>
                    </div>
                    <div>
                        <h3>AngularJS http resource</h3>
                        <a href="/httpresource.html">RESTful services in AngularJS. Usage of services http, $resource for REST request.</a>
                    </div>
                    <div>
                        <h3>AngularJS custom directive</h3>
                        <a href="/customdirective.html">Example my own directive</a>
                    </div>
                </div>




            </div>
            <!-- /.row -->

            <hr>

        </div>
        <!-- /.container -->
    </jsp:body>

</page:template>
