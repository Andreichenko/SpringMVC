<!DOCTYPE html>
<%--
  Created by IntelliJ IDEA.
  User: aleksandrandreichenko
  Date: 7/9/20
  Time: 10:36 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="page" tagdir="/WEB-INF/tags" %>

<page:angular-template>
    <jsp:body>

        <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <h3 class="page-header"> Filters AnjularJS
                    <small>filters</small></h3>
                <ol class="breadcrumb">
                    <li><a href="/index.html">Home</a> </li>
                    <li class="active"> filters</li>
                </ol>
            </div>
        </div>


        <script>

            var app = angular.module('myApp', []);
            app.controller('myController', function($scope) {
                $scope.companies = [
                    {name: "Alphabet inc.", browser: 'Chrome', link: 'https://google.com'},
                    {name: "Mozilla Corporation", browser: 'Firefox', link: 'https://www.mozilla.org/ru/'},
                    {name: "Apple inc.", browser: 'Safari', link: 'https://apple.com'},
                    {name: "Opera Software", browser: 'Opera' , link: 'http://www.opera.com'},
                    {name: "Microsoft", browser: 'IE', link: 'https://microsoft.com'}
                ];

                $scope.browser = {name: 'Netscape' , email: 'itisagooddayto@die.com'};
                $scope.currentDate = new Date();
            });

            //custom filter declaration
            app.filter('newFilter', function() {
                //first parameter is filter input
                //other parameters are optional parameters
                return function(filterInput, optional1, optional2, optional3) {
                    var filterResult;
                    //filter function start here
                    filterResult = "filter result: " + filterInput + " " + optional1 + " " + optional2;
                    //filter function ends
                    return filterResult;

                }
            });

        </script>

        <h3>AngularJS filter</h3>

            <div ng-app="myApp" ng-controller="myController">
                <h3>Filter order with pipe " expression | filter1 | filter2 | ... "</h3>

                <h3>Limit of string in | limitTo: 3</h3>
                <table class="table table-striped">
                    <tr ng-repeat="company in companies | limitTo:3">
                        <td>{{ company.name }}</td>
                        <td>{{ company.browser }}</td>
                        <td>{{ company.link }}</td>
                    </tr>
                </table>



            </div>




        </div>

    </jsp:body>
</page:angular-template>