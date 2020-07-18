<!DOCTYPE html>
<%--
  Created by IntelliJ IDEA.
  User: aleksandrandreichenko
  Date: 7/18/20
  Time: 6:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="page" tagdir="/WEB-INF/tags" %>

<page:angular-template>
    <jsp:body>
        <%--Page count--%>
        <div class="container">
        <%--Page Heading/breadcrumps--%>
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header"> AngularJS
                    <small>ng-bind and ng-model</small></h1>
                <ol class="breadcrumb">
                    <li><a href="/index.html">Home</a> </li>
                    <li class="active"> AngularJS ng-bind, ng-model</li>
                </ol>
            </div>
        </div>
        <%--/.row--%>
        <%--Content Row now--%>


            <div class="row">
                <div class="col-lg-12">
                    <div ng-app>
                        <h3>Sample of use the model AngularJS</h3>
                        <div>
                            <table>
                                <tr>
                                    <td><b>username</b></td>
                                    <td><input type="text" ng-model="userName"/> </td>
                                </tr>
                                <tr>
                                    <td><b>password</b></td>
                                    <td><input type="password" ng-model="userPass"/></td>
                                </tr>
                                <tr>
                                    <td><b> email</b></td>
                                    <td><input type="email" ng-model="Email"/> </td>
                                </tr>
                            </table>
                        </div>

                        <br />

                        Hi, {{userName}}! This is example to use model in AngularJS. <br/>
                        Your password is :) {{userPass}} <br />
                        Email: {{Email}} <br/>

                        <br/> And here too, but through ng-bind: <br/>
                        Name <span style="color: royalblue;" ng-bind="userName"></span> <br/>
                        Password <span style="color: royalblue;" ng-bind="userPass"></span><br/>
                        Email <span style="color: royalblue;" ng-bind="Email"></span><br/>

                        There are some minor problems with Chrome.

                    </div>
                </div>
            </div>
        </div>




    </jsp:body>
</page:angular-template>