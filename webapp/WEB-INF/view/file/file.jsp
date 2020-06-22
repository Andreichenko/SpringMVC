<%--
  Created by IntelliJ IDEA.
  User: AlexFrei
  Date: 26.06.20
  Time: 12:28
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="page" tagdir="/WEB-INF/tags" %>



<page:template>
    <jsp:body>
        <!-- Page content -->
        <div class="container">
            <!-- Page Heading/Breadcrumbs -->

            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header"> <spring:message code="file.loading"/>
                        <small> <spring:message code="file.pdforexcel"/> </small></h1>
                    <ol class="breadcrumb">
                        <li><a href="/index.html">Home</a> </li>
                        <li class="active"><spring:message code="file.loading"/> </li>
                    </ol>
                </div>
            </div>
            <!-- /.row-->
            <c:url value="/uploadFile" var="fileUploadControllerURL"/>
            <!-- Content Row-->
            <div class="row">
                <div class="col-lg-12">
                    <p> <spring:message code="file.loadfilespring"/> </p>
                    <form action="${fileUploadControllerURL}" method="post"
                          enctype="multipart/form-data">
                        <table>
                            <tr>
                                <td><b><spring:message code="file.file"/> </b></td>
                                <td><input type="file" name="file" value="choose file"/></td>
                                <td><input type="submit" value="upload file"/> </td>
                            </tr>
                        </table>
                    </form>
                    <br />
                    <c:url value="/excel" var="excelController"/>
                    <c:url value="/pdf" var="pdfController"/>
                    <a href="${excelController}">Excel</a>
                    <br />
                    <a href="${pdfController}">PDF</a>
                    <br/>
                    <br/>


                </div>
            </div>
            <!-- /.row -->

            <hr>


        </div>
        <!-- /.container -->


    </jsp:body>
</page:template>