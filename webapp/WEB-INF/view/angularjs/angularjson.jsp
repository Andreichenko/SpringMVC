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

        <script type="text/javascript">
            var simpleObject = {
                title: 'Simple JS Object title',
                developer: 'AlexFrei'
            };

            var jsonSimpleObject = JSON.stringify(simpleObject, null, 0); // 1 - space pretty print
            var simpleObjectParsed = JSON.parse(jsonSimpleObject);
            document.getElementById("resultStringify").innerHTML = jsonSimpleObject;
            document.getElementById("resultParse").innerHTML = 'title: ' + simpleObjectParsed.title + '; developer: ' + simpleObjectParsed.developer;
        </script>




        <pre>
    <b>2. Arrays in JavaScript</b>
    <code>
        var arrayObject = ['ZeroElement', 'FirstEl' , 'SecondElem'];
        var jsonArrayObj = JSON.stringify(arrayObject,null, 1);
        document.getElementById('resultJsonArrayObj').innerHTML = jsonArrayObj;
        var arrayParsed = JSON.parse(jsonArrayObj);
        document.getElementById('resultArrayParsed').innerHTML = arrayParsed[0];
    </code>
</pre>

        <div class="panel-group" id="accordionFour">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h4 class="panel-title">
                    <a data-toggle="collapse" data-parent="#accordionFour" href="#collapseFour">
                        <b> Results of jsonArrayObj (JSON.stringify)</b>
                    </a>
                </h4>
            </div>
            <div id="collapseFour" class="panel-collapse collapse in">
                <div class="panel-body">
                    <code id="resultJsonArrayObj"></code>
                </div>
            </div>
        </div>

        <div class="panel-group" id="accordionThree">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h4 class="panel-title">
                    <a data-toggle="collapse" data-parent="#accordionThree" href="#collapseThree">
                        <b> Results of arrayParsed[0] (JSON.parse)</b>
                    </a>
                </h4>
            </div>
            <div id="collapseThree" class="panel-collapse collapse in">
                <div class="panel-body">
                    <code id="resultArrayParsed"></code>
                </div>
            </div>
        </div>

        <script type="text/javascript">
            var arrayObject = ['ZeroElement', 'FirstEl' , 'SecondElem'];
            var jsonArrayObj = JSON.stringify(arrayObject,null, 1);
            document.getElementById('resultJsonArrayObj').innerHTML = jsonArrayObj;
            var arrayParsed = JSON.parse(jsonArrayObj);
            document.getElementById('resultArrayParsed').innerHTML = arrayParsed[0];
        </script>

        <pre>
    <b>3. Array of objects in JavaScript </b>
    <code>
        var arrayObjects = {
innerObjects: [
{name: 'firstObjectName', index:'first'},
{name: 'secondObjectName', index:'second'}
]
};
var jsonArrayObjects = JSON.stringify(arrayObjects, null, 1);
document.getElementById('resultJsonArrayObjects').innerHTML = jsonArrayObjects;
document.getElementById('resultObjectArray').innerHTML = arrayObjects.innerObjects[1].name;
    </code>
</pre>

        <div class="panel-group" id="accordionFive">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h4 class="panel-title">
                    <a data-toggle="collapse" data-parent="#accordionFive" href="#collapseFive">
                        <b>Result of jsonArrayObjects(JSON.stringify)</b>
                    </a>
                </h4>
            </div>
            <div id="collapseFive" class="panel-collapse collapse in">
                <div class="panel-body">
                    <code id = "resultJsonArrayObjects"></code>
                </div>
            </div>
        </div>

        <div class="panel-group" id="accordionSix">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h4 class="panel-title">
                    <a data-toggle="collapse" data-parent="#accordionSix" href="#collapseSix">
                        <b>Result of arrayObjects.innerObjects[1].name</b>
                    </a>
                </h4>
            </div>
            <div id="collapseSix" class="panel-collapse collapse in">
                <div class="panel-body">
                    <code id = "resultObjectArray"></code>
                </div>
            </div>
        </div>

        <script type="text/javascript">
            var arrayObjects = {
                innerObjects:[
                    {name: 'firstObjectName', index: 'first'},
                    {name: 'secondObjectname', index: 'second'}
                ]
            };
            var jsonArrayObjects = JSON.stringify(arrayObject, null, 1);
            document.getElementById('resultJsonArrayObjects').innerHTML = jsonArrayObjects;
            document.getElementById('resultObjectArray').innerHTML = arrayObjects.innerObjects[1].name;
        </script>

        <pre>
           <b> 4. Nested Object in JavaScript </b>
            <code>
        var nestedObject = {
        name: 'Some Nested Object',
        developer: 'alexfrei',
        information: {
                    year: 2017
                        }
                };
        document.getElementById('nestedObjectFull').innerHTML = nestedObject;
        document.getElementById('nestedObjectInfo').innerHTML = nestedObject.information;
            </code>
        </pre>

        <div class="panel-group" id="accordionSeven">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h4 class="panel-title">
                    <a data-toggle="collapse" data-parent="#accordionSeven" href="#collapseSeven">
                        <b>Result of nestedObject.name</b>
                    </a>
                </h4>
            </div>
            <div id="collapseSeven" class="panel-collapse collapse in">
                <div class="panel-body">
                    <code id = "nestedObjectname"></code>
                </div>
            </div>
        </div>

        <div class="panel-group" id="accordionEight">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h4 class="panel-title">
                    <a data-toggle="collapse" data-parent="#accordionEight" href="#collapseEight">
                        <b>Result of nestedObject.name</b>
                    </a>
                </h4>
            </div>
            <div id="collapseEight" class="panel-collapse collapse in">
                <div class="panel-body">
                    <code id = "nestedObjectInfoYear"></code>
                </div>
            </div>
        </div>

        <script type="text/javascript">
            var nestedObject = {
                name: 'some nested Object',
                information: {
                    developer: 'AlexFrei',
                    year: 2017
                }
            };
            document.getElementById('nestedObjectName').innerHTML = nestedObject.name;
            document.getElementById('nestedObjectInfoYear').innerHTML = nestedObject.information.year;
        </script>

    </jsp:body>
</page:template>