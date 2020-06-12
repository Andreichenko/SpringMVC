<!DOCTYPE html>

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
                    <h1 class="page-header">fileload
                        <small>pdf or excel</small>
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="index.html">Home</a>
                        </li>
                        <li class="active">load file</li>
                    </ol>
                </div>
            </div>
            <!-- /.row -->

            <c:url value="/uploadFile" var="fileUploadControllerURL" />
            <!-- Content Row -->
            <div class="row">

                <div class="col-lg-12">
                    <p>loading the file using SpringMVC </p>
                    <form action="${fileUploadControllerURL}" method="post"
                          enctype="multipart/form-data">
                        <table>
                            <tr>
                                <td><b>File:</b></td>
                                <td><input type="file" name="file"></td>
                                <td><input type="submit" value="load file"></td>
                            </tr>
                        </table>
                    </form>

                    <br />

                    <c:url value="/excel" var="excelController"/>
                    <c:url value="/pdf" var="pdfController"/>
                    <a href="${excelController}">Excel</a>
                    <br />
                    <a href="${pdfController}">PDF</a>

                    <br />
                    <br />

                    <c:if test="${not empty sessionScope.sessionObject}">
                        <p>object in scope:</p>
                        <b>${sessionScope.sessionObject}</b>
                    </c:if>


                </div>

            </div>
            <!-- /.row -->

            <hr>

        </div>
        <!-- /.container -->
    </jsp:body>
</page:template>
