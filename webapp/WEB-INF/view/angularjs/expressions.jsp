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
              <div ng-app="application">

                  <h1>AngularJS expressions</h1>
                  <div ng-controller="myController">
                      <div>
                          <table class="table table-striped">
                              <tr>
                                  <td><b>addiction  one plus one </b></td>
                                  <td>{{1 + 1}}</td>
                              </tr>
                              <tr>
                                  <td><b>addiction string</b></td>
                                  <td>{{"AngularJS" + " " + "Spring MVC"}}</td>
                              </tr>
                              <tr>
                                  <td><b>$scope</b></td>
                                  <td>{{framework}}</td>
                              </tr>
                              <tr>
                                  <td><b>call object $scope.framework.name:</b></td>
                                  <td>{{framework.name}}</td>
                              </tr>
                              <tr>
                                  <td><b>Arrays $scope.link[1].link</b></td>
                                  <td><a href="{{links[1].link}}" target="_blank">{{links[1].link}}</a> </td>
                              </tr>
                              <tr>
                                  <td><b>call function $scope.someFunction(123)</b></td>
                                  <td> {{someFunction(123)}}</td>
                              </tr>
                              <tr>
                                  <td><b>call function $scope.link</b></td>
                                  <td>{{links[3].someFunction()}}</td>
                              </tr>
                          </table>
                          1. $scope - area of visibility which is created in case of declaration directive ngController

                          <div class="panel-group" id="accordion">
                              <div class="panel panel-default">
                                  <div class="panel-heading">
                                      <h4 class="panel-title">
                                          <a data-toggle="collapse" data-parent="#accordion" href="#collapse">
                                              <b>My code script here</b>
                                          </a>
                                      </h4>
                                  </div>
                                  <div id="collapse" class="panel-collapse collapse in">
                                      <div class="panel-body">
                                            <pre><b> <code>
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
                                                });</code></b></pre>
                                      </div>
                                  </div>
                              </div>


                          </div>
                      </div>
                  </div>


              </div>
          </div>


    </jsp:body>

</page:angular-template>

