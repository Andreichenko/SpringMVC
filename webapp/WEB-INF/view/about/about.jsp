<!DOCTYPE html>

<%--
  Created by IntelliJ IDEA.
  User: AlexFrei
  Date: 26.06.20
  Time: 14:53
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="page" tagdir="/WEB-INF/tags" %>



<page:about-template>

    <jsp:body>
        <!-- Code's messsy, basic layout for a small project I'm doing. Follow me on twitter @taylorgrendel for free pie!-->


        <%--<script src="/resources/jquery/jquery-1.11.2.min.js"></script>--%>
        <%--<script src="/resources/js/bootstrap.min.js"></script>--%>
        <script src="/resources/jmosaicflow/jquery.mosaicflow.min.js"></script>
        <script type="text/javascript" src="/resources/fancybox/jquery.fancybox.pack.js"></script>
        <script type="text/javascript">
            $(document).ready(function() {
                $("a.fancyimage").fancybox();
            });
        </script>
        <link rel="stylesheet" href="/resources/fancybox/jquery.fancybox.css" type="text/css" media="screen" />
        <style>
            .mosaicflow__item {
                padding:3px;
            }
            .mosaicflow__column {
                float:left;
            }
            .mosaicflow__item img {
                display:block;
                width:100%;
                height:auto;
                padding: 4px;
                background-color: transparent;
                border: 1px solid transparent;
                border-radius: 4px;
            }
            .mosaicflow__item img:hover {
                opacity: 0.6;
                filter: alpha(opacity=60);
            }
        </style>


        <script>
            $(document).ready(function(){
                var scroll_start = 0;
                var startchange = $('#startchange');
                var offset = startchange.offset();
                if (startchange.length){
                    $(document).scroll(function() {
                        scroll_start = $(this).scrollTop();
                        if(scroll_start > offset.top) {
                            $(".navbar-default").css('background-color', '#ffffff');
                        } else {
                            $('.navbar-default').css('background-color', 'transparent');
                        }
                    });
                }
            });
        </script>

        <%--<script src="/resources/js/jquery.backgroundvideo.min.js"></script>--%>
        <script>
            $(document).ready(function() {
                var videobackground = new $.backgroundVideo($('body'), {
                    "align": "centerXY",
                    "width": 1280,
                    "height": 720,
                    "path": "/resources/images/",
                    "filename": "video",
                    "types": ["mp4","ogg","webm"],
                    "preload": true,
                    "autoplay": true,
                    "loop": true
                });
            });
        </script>


        <script>
            $(document).ready(function(){
                var show = true;
                var countbox = "#counts";
                $(window).on("scroll load resize", function(){

                    if(!show) return false;

                    var w_top = $(window).scrollTop();
                    var e_top = $(countbox).offset().top;

                    var w_height = $(window).height();
                    var d_height = $(document).height();

                    var e_height = $(countbox).outerHeight();

                    if(w_top + 200 >= e_top || w_height + w_top == d_height || e_height + e_top < w_height){
                        $(".spincrement").spincrement({
                            thousandSeparator: "",
                            duration: 1200
                        });

                        show = false;
                    }
                });
            });


        </script>


        <div id="startchange"></div>

        <div class="page-one">
            <div>
                <div class="text-center">
                    <h1><spring:message code="navAboutme.aboutme"/> </h1>
                        <%--<h1>This page about me</h1>--%>
                    <div class="page-break"></div>
                    <h4 style="color: white"><p><spring:message code="navAbautme.coloborator"/> </p>
                        <p><spring:message code="navAbautme.information"/> </p>
                    </h4>
                        <%--<p><spring:message code="navAboutme.aboutmeinfo"/> </p></h4>--%>
                        <%--<h4 style="color: white"><p>On this page, I posted all information about me. First of all, I want to talk about my career and future plans.</p>--%>
                        <%--<p>My story will be short, but I hope it will be interesting.</p></h4>--%>
                </div>
            </div>
        </div>



        <div class="content-block-one">
            <h1><spring:message code="navAboutme.myachiev"/> </h1>
                <%--<h1>My achievements and results</h1>--%>
            <p><spring:message code="navAboutme.myachievinfo"/> </p>
                <%--<p>From August, 2016 to March, 2017 I independently studied technologies, and also to languages.--%>
                <%--</p>--%>
            <div class="container">
                <div class="clearfix mosaicflow">
                    <div class="mosaicflow__item">
                        <a class="fancyimage" data-fancybox-group="group" href="/resources/images/Nekommerch-2-1043710-OLF.jpg">
                            <img src="/resources/images/Nekommerch-2-1043710-OLF.jpg" />
                        </a>
                    </div>
                    <div class="mosaicflow__item">
                        <a class="fancyimage" data-fancybox-group="group" href="/resources/images/Nekommerch-2-1009585-OLF.jpg">
                            <img src="/resources/images/Nekommerch-2-1009585-OLF.jpg" />
                        </a>
                    </div>
                    <div class="mosaicflow__item">
                        <a class="fancyimage" data-fancybox-group="group" href="/resources/images/Nekommerch-2-1009290-OLF.jpg">
                            <img src="/resources/images/Nekommerch-2-1009290-OLF.jpg" />
                        </a>
                    </div>
                    <div class="mosaicflow__item">
                        <a class="fancyimage" data-fancybox-group="group" href="/resources/images/Nekommerch-2-1008814-OLF.jpg">
                            <img src="/resources/images/Nekommerch-2-1008814-OLF.jpg" />
                        </a>
                    </div>
                    <div class="mosaicflow__item">
                        <a class="fancyimage" data-fancybox-group="group" href="/resources/images/cert6.png">
                            <img src="/resources/images/cert6.png" />
                        </a>
                    </div>
                    <div class="mosaicflow__item">
                        <a class="fancyimage" data-fancybox-group="group" href="/resources/images/cert7.png">
                            <img src="/resources/images/cert7.png" />
                        </a>
                    </div>
                    <div class="mosaicflow__item">
                        <a class="fancyimage" data-fancybox-group="group" href="/resources/images/cert8.png">
                            <img src="/resources/images/cert8.png" />
                        </a>
                    </div>
                    <spring:message code="navAboutme.cert"/>
                        <%--My Certificates--%>
                </div>
            </div>
        </div>


        <div class="content-space-begin">
            <div class="text-center">
                <h1><spring:message code="navAboutme.way"/> </h1>
                    <%--<h1>The way</h1>--%>
                <div class="page-break"></div>
                <p><h4 style="color: white"><spring:message code="navAboutme.progress"/> </h4> </p>
                    <%--<p><h4 style="color: white">to progress begins with difficult rise.</h4></p>--%>
            </div>
        </div>



        <div class="content-block-one">
            <h1><spring:message code="navAboutme.mystart"/> </h1>
                <%--<h1>My start</h1>--%>
            <p><spring:message code="navAboutme.2006"/> </p>
                <%--<p>In 2006 I graduated from the Voronezh state technical university of automated design engineering systems.--%>
                <%--Till 2011 I worked in different state companies at positions of the expert or engineer and also at--%>
                <%--system administrator of the Unix/Windows systems.</p>--%>
        </div>

        <div class="page-three">
            <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                </ol>
                    <%----%>
                <!-- Wrapper for slides -->
                <div class="carousel-inner">
                    <div class="item active">
                        <img src="/resources/images/image1.jpg" alt="..." width="100%">
                        <div class="carousel-caption">
                            <h2><spring:message code="navAboutme.slideone"/> </h2>
                                <%--<h2>I gained wide experience in design of networks</h2>--%>
                        </div>
                    </div>
                    <div class="item">
                        <img src="/resources/images/image2.jpg" alt="..." width="100%">
                        <div class="carousel-caption">
                            <h2><spring:message code="navAboutme.slidetwo"/> </h2>
                                <%--<h2>setup of switches including Cisco, Huawei and so one</h2>--%>
                        </div>
                    </div>
                    <div class="item">
                        <img src="/resources/images/image3.jpg" alt="..." width="100%">
                        <div class="carousel-caption">
                            <h2><spring:message code="navAboutme.slidethree"/> </h2>
                                <%--<h2>administration of servers, setup and advanced Service Desk</h2>--%>
                        </div>
                    </div>

                </div>

                    <%----%>
                    <%--<!-- Controls -->--%>
                <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left"></span>
                </a>
                <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right"></span>
                </a>
            </div>
        </div>


        <div class="content-block-one">
            <h1><spring:message code="navAboutme.banking"/> </h1>
                <%--<h1>Work in a banking system</h1>--%>
            <p><spring:message code="navAboutme.bankinfo"/> </p>
                <%--<p>Since 2011 I began to work in Sberbank in department of technical support.--%>
                <%--In the course of operaton was required to expand possibilities of technical support.--%>
                <%--My department permanently extended. The second line of support often felt need for search of new decisions.</p>--%>
        </div>
        <div class="content-space-one">
            <div class="text-center">
                <h1><spring:message code="navAboutme.software"/> </h1>
                    <%--<h1>Software development</h1>--%>
                <div class="page-break"></div>
                <p><h4 style="color: white"><spring:message code="navAboutme.softwareinfo"/> </h4> </p>
                    <%--<p><h4 style="color: white">During this time frame I mastered RESTful and SOAP services for operation of applications of banking systems.--%>
                    <%--For the decision of the task on a process optimization of assembly of information on the computer equipment--%>
                    <%--it was required to create uniform CMDB system. To directly project software development guaranteed with me.</h4></p>--%>
            </div>
        </div>
        <div class="content-block-one">
            <h1><spring:message code="navAboutme.CMDB"/> </h1>
                <%--<h1>CMDB project</h1>--%>
            <p><spring:message code="navAboutme.CMDBinfo"/> </p>
                <%--<p>For case of the decision of  task it was required to create the MySQL database and to apply JDBC and Java.--%>
                <%--The interface for the user was selected as a web application. I had to study the main life cycles of JSP JSF.--%>
                <%--The project was ready half a year later.</p>--%>
        </div>
        <div class="content-space-two">
            <div class="text-center">
                <h1><spring:message code="navAboutme.springin"/> </h1>
                    <%--<h1>Spring in my heart</h1>--%>
                <div class="page-break"></div>
                <p><h4 style="color: white"><spring:message code="navAboutme.springinfo"/> </h4> </p>
                    <%--<p><h4 style="color: white">Spring in my mind.</h4></p>--%>
            </div>
        </div>
        <div class="content-block-one">
            <h1><spring:message code="navAboutme.possible"/> </h1>
                <%--<h1>Spring framework, it's possible.</h1>--%>
            <p><spring:message code="navAboutme.possibleinf"/> </p>
                <%--<p>Since 2015 I was fond of programming on the basis of Spring Framework.--%>
                <%--The study required a lot of time. Now I realized 4 projects. And also I have some knowledge in technologies--%>
                <%--JavaEE/SE Spring Framework, Hibernate, HTML, CSS, JS, AngularJS. In my CV web project I used almost everything. </p>--%>
        </div>


        <div class="content-space-three">
            <div class="text-center">
                <section class="section" id="counts">
                    <div class="containerone clearfix text-center">
                        <h3><spring:message code="navAboutme.stat"/> </h3>
                            <%--<h3>My statistic of year</h3>--%>
                        <div class="col-4">
                            <div class="circle">
                                <span class="spincrement">780</span>
                            </div>
                            <p class="label"><spring:message code="navAboutme.study"/> </p>
                                <%--<p class="label">hours of study</p>--%>
                        </div>
                        <div class="col-4">
                            <div class="circle">
                                <span class="spincrement">4</span>
                            </div>
                            <p class="label"><spring:message code="navAboutme.proj"/> </p>
                                <%--<p class="label">project</p>--%>
                        </div>
                        <div class="col-4">
                            <div class="circle">
                                <span class="spincrement">430</span>
                            </div>
                            <p class="label"><spring:message code="navAboutme.less"/> </p>
                                <%--<p class="label">lessons</p>--%>
                        </div>
                    </div>
                </section>
            </div>
        </div>

        </div>

        <div class="content-block-one">
            <div class="col-md-6">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2472.616048054666!2d39.163924315448156!3d51.70347097966781!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x413b28ce8d50b16d%3A0x7a32460cb5ae0d06!2z0YPQuy4gNjAg0JDRgNC80LjQuCwgMywg0JLQvtGA0L7QvdC10LYsINCS0L7RgNC-0L3QtdC20YHQutCw0Y8g0L7QsdC7LiwgMzk0MDUz!5e0!3m2!1sru!2sru!4v1491645348987" width="500" height="350" width="100%" height="350" frameborder="0" style="border:0"></iframe>
            </div>

            <div class="col-md-4">

                <h3>Contact Details</h3>
                <p>
                    394053 Russia<br>Voronezh, 60 Armee 3 60<br>
                </p>
                <p><i class="fa fa-phone"></i>
                    <abbr title="Phone">P</abbr>: +7(904) 212-0788</p>
                <p><i class="fa fa-envelope-o"></i>
                    <abbr title="Email">E</abbr>: <a href="mailto:name@example.com">alexfrei.andreichenko@gmail.com</a>
                </p>
                <p><i class="fa fa-clock-o"></i>
                    <abbr title="Hours">H</abbr>: Monday - Friday: 9:00 AM to 8:00 PM</p>
                <ul class="list-unstyled list-inline list-social-icons">
                    <li>
                        <a target="_blank" href="http://www.facebook.com/sharer.php?u=https://www.1001tracklists.com&t=WOWOWOWOW"><i class="fa fa-facebook-square fa-2x"></i></a>
                    </li>
                    <li>
                        <a target="_blank" href="http://www.linkedin.com/shareArticle?mini=true&url=https://www.1001tracklists.com"><i class="fa fa-linkedin-square fa-2x"></i></a>
                    </li>
                    <li>
                        <a target="_blank" href="http://twitter.com/share?url=https://www.1001tracklists.com&text=WOWOWOW"><i class="fa fa-twitter-square fa-2x"></i></a>
                    </li>
                    <li>
                        <a target="_blank" href="https://plusone.google.com/_/+1/confirm?hl=en&url=https://www.1001tracklists.com"><i class="fa fa-google-plus-square fa-2x"></i></a>
                    </li>
                </ul>
            </div>
        </div>

        </div>

    </jsp:body>


</page:about-template>

