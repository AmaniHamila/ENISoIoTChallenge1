<!doctype html>
<html lang="en">
<head>
    <title>ENISo IoT Challenge</title>
    <style>
    html,
    body {
        padding: 0;
        margin: 0;
        height: 100%;
    }

    html {
        font: 1em/1.5 "Lato", sans-serif;
        -webkit-font-smoothing: antialiased;
        -moz-osx-font-smoothing: grayscale;
        text-rendering: optimizelegibility;
    }

    body {
        font-size: 1.3em;
    }

    header {
        height: 100%;
        position: relative;
        overflow: hidden;
        /*background: url(mactry.jpg) center no-repeat;*/
        /* Image Credit: Unsplash.me */
        background-size: cover;
    }

    header .content {
        position: absolute;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        z-index: 1;
    }

    header h1,
    header h2 {
        margin: 0;
    }

    header h2 {
        text-transform: uppercase;
        margin-top: -.5em;
    }

    header hgroup {
        -webkit-transform: translate(-50%, -50%);
        -moz-transform: translate(-50%, -50%);
        -ms-transform: translate(-50%, -50%);
        -o-transform: translate(-50%, -50%);
        transform: translate(-50%, -50%);
        display: inline-block;
        text-align: center;
        position: absolute;
        top: 85%;
        left: 50%;
        color: #fff;

        width: 100%;
        /*background-color: rgba(0, 0, 0, 0.2);*/
        z-index: 2;
    }

    header .overlay {
        position: absolute;
        top: 0;
        right: 0;
        left: 0;
        bottom: 0;
        background: url("${assetPath(src: 'theone111.jpg')}") center no-repeat;

        background-size: cover;
        z-index: 0;
        opacity: 0;
        -webkit-filter: blur(4px);
    }

    .site {
        padding: 20em 0;
        text-align: center;
        background-color: #efefef;
        font-size: .8em;
        color: #444;
        position: relative
    }

    .site a {
        color: #666;
        text-decoration: none;
    }

    .site a:hover {
        color: #222;
    }

    .site nav {
        position: absolute;
        top: 0;
        left: 0;
        background: #222;
        width: 100%
    }

    .site nav a {
        padding: 10px 30px;
        font-size: 1.3em;
        display: inline-block

    }

    .site nav a:hover {
        background: #333;
        color: #fff
    }

    .goToTop {
        position: fixed;
        top: 0;
        height: 70px;
        z-index: 1;
        width: 100%;
    }

    </style>

</head>

<body>

<!-- Preloader Starts -->
<div class="loader">
</div>
<!-- Preloader Ends -->

<!-- Header Section Starts -->
<header id="header" class="carousel slide">
    <!-- Wrapper for Slides -->
    <div class="header-overlay">
        <div class="container">
            <!-- Logo Starts -->
            %{--<div data-scroll-reveal="enter top and move 50px over 1.2s" class="hexagon">--}%
            %{--<i class="fa fa-trophy"></i><span></span>--}%
            %{--</div>--}%
            <!-- Logo Ends -->
            <!-- Main Heading Starts -->
            <div class="main-headd">

                <!--  <h1 align="center">
                    <strong class="ribbon-content">ENISo IoT Challenge</strong>
                </h1> -->
                <!--
            </br> <h4 data-scroll-reveal="enter left and move 50px over 1.8s"
                      align="center">Because something awesome is coming up soon</h4>

                <p data-scroll-reveal="enter right and move 50px over 2.0s" align="center">
                    Stay tuned and be patient. This challenge is totally worth waiting for.</p> -->
            </div>

            <!-- Main Heading Ends -->
        </div>

        <div class="content">

            <hgroup>
                %{--<h1>ENISo IoT CHALLENGE</h1>--}%

                <h2><div id="countdown-area">
                    <!-- Count Down Timer Starts -->
                    <ul class="countdown">
                        <li><span data-scroll-reveal="enter bottom and move 20px over 1.2s" class="days">00</span>

                            <p data-scroll-reveal="enter top and move 20px over 1.4s" class="days_ref">
                                days</p>
                        </li>
                        <li><span data-scroll-reveal="enter bottom and move 20px over 1.6s" class="hours">00</span>

                            <p data-scroll-reveal="enter top and move 20px over 1.8s" class="hours_ref">
                                hours</p>
                        </li>
                        <li><span data-scroll-reveal="enter bottom and move 2px over 2.0s" class="minutes">00</span>

                            <p data-scroll-reveal="enter top and move 20px over 2.2s" class="minutes_ref">
                                minutes</p>
                        </li>
                        <li><span data-scroll-reveal="enter bottom and move 20px over 2.4s" class="seconds">00</span>

                            <p data-scroll-reveal="enter top and move 20px over 2.6s" class="seconds_ref">
                                seconds</p>
                        </li>
                    </ul>
                    <!-- Count Down Timer Ends -->
                </div></h2>
            </hgroup>
        </div>

        <div class="overlay"></div>
        <script>
            //Based on the Scroller function from @sallar
            var $content = $('header .content')
                    , $blur = $('header .overlay')
                    , wHeight = $(window).height();

            $(window).on('resize', function () {
                wHeight = $(window).height();
            });

            window.requestAnimFrame = (function () {
                return window.requestAnimationFrame ||
                        window.webkitRequestAnimationFrame ||
                        window.mozRequestAnimationFrame ||
                        function (callback) {
                            window.setTimeout(callback, 1000 / 60);
                        };
            })();

            function Scroller() {
                this.latestKnownScrollY = 0;
                this.ticking = false;
            }

            Scroller.prototype = {

                init: function () {
                    window.addEventListener('scroll', this.onScroll.bind(this), false);
                    $blur.css('background-image', $('header:first-of-type').css('background-image'));
                },


                onScroll: function () {
                    this.latestKnownScrollY = window.scrollY;
                    this.requestTick();
                },


                requestTick: function () {
                    if (!this.ticking) {
                        window.requestAnimFrame(this.update.bind(this));
                    }
                    this.ticking = true;
                },

                update: function () {
                    var currentScrollY = this.latestKnownScrollY;
                    this.ticking = false;


                    var slowScroll = currentScrollY / 2
                            , blurScroll = currentScrollY * 2
                            , opaScroll = 1.4 - currentScrollY / 400;
                    if (currentScrollY > wHeight)
                        $('nav').css('position', 'fixed');
                    else
                        $('nav').css('position', 'absolute');

                    $content.css({
                        'transform': 'translateY(' + slowScroll + 'px)',
                        '-moz-transform': 'translateY(' + slowScroll + 'px)',
                        '-webkit-transform': 'translateY(' + slowScroll + 'px)',
                        'opacity': opaScroll
                    });

                    $blur.css({
                        'opacity': blurScroll / wHeight
                    });
                }
            };


            var scroller = new Scroller();
            scroller.init();
        </script>

    </div>
    <!-- Countdown Area Ends -->

</div>
</header>
<!-- Header Section Ends -->

</section>

<!-- Services Section Starts -->


<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
    <div class="row">
        <div class="col-md-6">
            %{--<div class="push-left iotLogo"><g:img dir="images" file="iotLogo.png"/></div>--}%
            <h1 class="title-head">ENISo IoT CHALLENGE</h1>
        </div>

        <div class="col-md-6">
            <ul class="nav navbar-nav navbar-right">
                <li class="hidden">
                    <a href="#page-top"></a>
                </li>
                <li>
                    <a class="page-scroll"
                       onclick="$('#about').animatescroll({scrollSpeed: 2000, easing: 'easeInOutBack'});">About</a>
                </li>
                <li>
                    <a class="page-scroll" onclick="$('#timelineSection').animatescroll({
                        scrollSpeed: 2000,
                        easing: 'easeInOutBack'
                    });">Timeline</a>
                </li>
                <li>
                    <a class="page-scroll"
                       onclick="$('#sponsors').animatescroll({scrollSpeed: 2000, easing: 'easeInOutBack'});">Sponsors</a>
                </li>
                <li>
                    <a class="page-scroll"
                       onclick="$('#contact').animatescroll({scrollSpeed: 2000, easing: 'easeInOutBack'});">Apply</a>
                </li>
            </ul>
        </div>
    </div>
</div>


<section id="Theme">
    %{--<div class="timeline-overlay">--}%
    <div class="container">
        <!-- Main Heading Starts -->
        <div class="main-head">
    <h2 class="section-title"
        data-scroll-reveal="enter top and move 50px over 1.2s">Theme</h2>
            <h2 data-scroll-reveal="enter top and move 50px over 1.2s" class="MT40"></h2>

    <a href="http://www.eniso.info/vr/r/activities.xhtml">View the theme of the challenge</a>

        </div>
        <!-- Main Heading Ends -->
    </div>
    %{--</div>--}%
</section>




<section id="about">
    <div class="services-overlay">
        <div class="container" style="text-align: justify; margin:auto ; width:1000px; ">
            <!-- Main Heading Starts -->
            <div class="main-head">
                <h2 class="section-title"
                    data-scroll-reveal="enter top and move 50px over 1.2s">About The Challenge</h2>


                <p data-scroll-reveal="enter bottom and move 50px over 1.4s" class="about-p">
                    The National Engineering School of Sousse along with the IEEE ENISo SB are jointly organizing the first edition of the "ENISo Internet of Things Challenge", A challenge that will set your creative-mode ON!</br>

                    Because in a world that speaks High-tech fluently ,The National Engineering School of Sousse can't but work relentlessly to immerse itself in the spectrum of the today's state-of-the-art technologies.
                    That's why we linked our challenge to IoT, A topic that comes to you right from the future</br>

                    "ENISo IoT Challenge" will gather 6 teams to perpetually compete for straight 48 hours.
                    The kickoff of our event will be launched on the 13th of April with a series of conferences that revolve around the IoT themes.
                    The Challenge will then take place at ENISo on the 15th of April starting from 6:30 PM and will end on the 17th of April on 6:30 PM.</br>

                    The teams are expected to build up a prototype that would solve a problem or satisfy a need in the tackled topic (the topics of the challenge will be announced right before the start of the competition).

                    Students will have access to a different range of tools and materials (i.e : Arduino Boards , Raspberry pi boards .. etc) However these materials will only be announced on the day of the challenge.</br>

                </p>
            </div>
            <!-- Main Heading Ends -->
            <!-- Services List Starts -->
            <div id="services-blocks" class="row">
                <div data-scroll-reveal="enter bottom and move 50px over 1.6s"
                     class="col-lg-4 col-md-4 col-sm-12 col-xs-12 sblock">
                    <span class="fa fa-trophy"></span>
                    <h4>Win a Prize</h4>

                    <p>
                        We have awesome prizes for the winners, plus all participants will be given a certificate of participation.
                    </p>
                </div>

                <div data-scroll-reveal="enter top and move 50px over 1.7s"
                     class="col-lg-4 col-md-4 col-sm-12 col-xs-12 sblock">
                    <span class="fa fa-users"></span>
                    <h4>Team up and join!</h4>

                    <p>
                        We need up to 6 teams, every team has 6 members and these members are formed with 2 students from each major (IA,EI,MECA).
                    </p>
                </div>

                <div data-scroll-reveal="enter bottom and move 50px over 1.8s"
                     class="col-lg-4 col-md-4 col-sm-12 col-xs-12 sblock"
                     onclick="$('#contact').animatescroll({scrollSpeed: 2000, easing: 'easeInOutBack'});">
                    <span class="fa fa-hand-o-down"></span>
                    <h4>Where to submit</h4>

                    <p>
                        Do you want to apply ?  well perfect scroll down this page and you'll find the application form.
                    </p>
                </div>
            </div>
            <!-- Services List Ends -->
        </div>
    </div>
</section>
<!-- Services Section Ends -->



<!-- Services Section Starts -->
%{--<section id="service">--}%
%{--<div class="services-overlay">--}%
%{--<div class="container">--}%
%{--<!-- Main Heading Starts -->--}%
%{--<div class="main-head">--}%
%{--<h2 data-scroll-reveal="enter top and move 50px over 1.2s">Theme <i class="fa fa-lightbulb-o"></i></h2>--}%

%{--<p class="bg-primary">Coming Soon</p>--}%
%{--</div>--}%
%{--<!-- Main Heading Ends -->--}%

%{--</div>--}%
%{--</div>--}%
%{--</section>--}%
<!-- Services Section Ends -->



<!-- Services Section Starts -->
<section id="timelineSection">
    <div class="timeline-overlay">
        <div class="container">
            <!-- Main Heading Starts -->
            <div class="main-head">
                <h2 data-scroll-reveal="enter top and move 50px over 1.2s"
                    class="MT40 section-title">Timeline</h2></br></br></br>

                <asset:image src="TimelineFinal.png"/>

            </div>
            <!-- Main Heading Ends -->
        </div>
    </div>
</section>
<!-- Services Section Ends -->

<!-- Contact Us Section Starts -->
<section id="contact">

    <div class="container">
        <!-- Main Heading Starts -->
        <div class="main-head">
            <h2 class="section-title" data-scroll-reveal="enter top and move 50px over 1.2s" class="MT40">
                Application Form</h2>
        </div>
        <!-- Main Heading Ends -->
        <!-- Form & Address Blocks Starts -->
        <div class="row">

            <!-- Contact Address Starts -->
            <div data-scroll-reveal="enter left and move 50px over 1.8s"
                 class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                <p class="apply-p">
                    Please pick a name for your team and fill in the form with your team members' details. Any student is welcome to apply, we strongly encourage mixed teams of 1st and 2nd year students. please attach a PDF containing the 6 CVs of your team members </br>
                    <strong>Remember:</strong> there will only be few teams to compete , so hurry up and apply to be part of the challenge !</br>
                    <strong>Deadline:</strong> 13th of April, 2016</p>
            </div>
            <!-- Contact Address Ends -->

            <!-- Contact Form Starts -->
            <div data-scroll-reveal="enter right and move 50px over 1.6s" id="contact-area"
                 class="col-lg-6 col-md-6 col-sm-12 col-xs-12">

                <g:uploadForm controller="application" method="POST" class="contact-form" action="save">

                    <div class="form-group">
                        <input type="text" name="teamName" class="form-control" required
                               placeholder="Team Name">
                    </div>

                    <div class="form-group">

                        <p>App. Computer Eng. Students:</p>

                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6"><input type="text"
                                                                                    name="fullName1"
                                                                                    class="form-control" required
                                                                                    placeholder="First Student Name">
                            </div>


                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                <input type="email" name="email1" class="form-control" required
                                       placeholder="Email">
                            </div>
                        </div>
                    </div>


                    <div class="form-group">

                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6"><input type="text"
                                                                                    name="fullName2"
                                                                                    class="form-control" required
                                                                                    placeholder="Second Student Name">
                            </div>


                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                <input type="email" name="email2" class="form-control" required
                                       placeholder="Email">
                            </div>
                        </div>
                    </div>


                    <div class="form-group">

                        <p>Industrial Electronics Students:</p>

                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6"><input type="text"
                                                                                    name="fullName3"
                                                                                    class="form-control" required
                                                                                    placeholder="First Student Name">
                            </div>


                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                <input type="email" name="email3" class="form-control" required
                                       placeholder="Email">
                            </div>
                        </div>
                    </div>


                    <div class="form-group">

                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6"><input type="text"
                                                                                    name="fullName4"
                                                                                    class="form-control" required
                                                                                    placeholder="Second Student Name">
                            </div>


                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                <input type="email" name="email4" class="form-control" required
                                       placeholder="Email">
                            </div>
                        </div>
                    </div>


                    <div class="form-group">

                        <p>Mechatronics Students:</p>

                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6"><input type="text"
                                                                                    name="fullName5"
                                                                                    class="form-control" required
                                                                                    placeholder="First Student Name">
                            </div>


                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                <input type="email" name="email5" class="form-control" required
                                       placeholder="Email">
                            </div>
                        </div>
                    </div>


                    <div class="form-group">

                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6"><input type="text"
                                                                                    name="fullName6"
                                                                                    class="form-control" required
                                                                                    placeholder="Second Student Name">
                            </div>


                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                <input type="email" name="email6" class="form-control" required
                                       placeholder="Email">
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="fileinput fileinput-new input-group" data-provides="fileinput">
                            <div class="form-control" data-trigger="fileinput"><i
                                    class="glyphicon glyphicon-file fileinput-exists"></i> <span
                                    class="fileinput-filename"><span
                                        class="fileNameHolder">Attach Your CVs<span></span></div>
                            <span class="input-group-addon btn btn-default btn-file"><span
                                    class="fileinput-new">Select file</span><span
                                    class="fileinput-exists">Change</span><input
                                    accept="application/pdf,application/msword, application/vnd.openxmlformats-officedocument.wordprocessingml.document"
                                    type="file" name="cv"></span>
                            <a href="#" class="input-group-addon btn btn-default fileinput-exists"
                               data-dismiss="fileinput">Remove</a>
                        </div>
                    </div>

                    <div class="form-group" style="text-align: right;">
                        <button type="submit" class="btn btn-info">Apply</button>
                    </div>
                </g:uploadForm>
            </div>
            <!-- Contact Form Ends -->

        </div>
        <!-- Form & Address Blocks Ends -->
    </div>
</section>

<section id="sponsors">
    %{--<div class="timeline-overlay">--}%
    <div class="container">
        <!-- Main Heading Starts -->
        <div class="main-head">
            <h2 data-scroll-reveal="enter top and move 50px over 1.2s" class="MT40 section-title">Sponsors</h2>

            <div class="sponsorLogos">

                <g:img dir="images" file="eniso.jpg" style="    max-width: 100px;" class="img-rounded"/>
                <g:img dir="images" file="icteos.jpg" style="    max-width: 200px;" class="img-rounded"/>
                <g:img dir="images" file="WAYCON.jpg" style="    max-width: 300px;" class="img-rounded"/>
                <g:img dir="images" file="Logo_STS.png" style="    max-width: 200px;" class="img-rounded"/>
                <g:img dir="images" file="chifco.png" style="    max-width: 200px;" class="img-rounded"/>
                <g:img dir="images" file="STM.png" style="    max-width: 150px;" class="img-rounded"/>
                <g:img dir="images" file="yaslamen.png" style="    max-width: 200px;" class="img-rounded"/>
                <g:img dir="images" file="Educanet11.jpg" style="    max-width: 300px;" class="img-rounded"/>
                <g:img dir="images" file="just-in-time.jpg" style="    max-width: 150px;" class="img-rounded"/>
                <g:img dir="images" file="coca.jpg" style="    max-width: 150px;" class="img-rounded"/>
                <g:img dir="images" file="ceralis.jpg" style="    max-width: 200px;" class="img-rounded"/>
                <g:img dir="images" file="LogoTES.png" style="    max-width: 300px;" class="img-rounded"/>
                <g:img dir="images" file="pcs.jpg" style="    max-width: 150px;" class="img-rounded"/>
                <g:img dir="images" file="Viplogo.jpg" style="    max-width: 150px;" class="img-rounded"/>
                <g:img dir="images" file="knooz-fm.png" style="    max-width: 150px;" class="img-rounded"/>
            </div>
        </div>
        <!-- Main Heading Ends -->
    </div>
    %{--</div>--}%
</section>




<section id="pictureSection">
    %{--<div class="timeline-overlay">--}%
    <div class="container">
        <!-- Main Heading Starts -->
        <div class="main-head">
            <h2 data-scroll-reveal="enter top and move 50px over 1.2s" class="MT40"></h2>

            <asset:image src="pic.png"/>

        </div>
        <!-- Main Heading Ends -->
    </div>
    %{--</div>--}%
</section>

<!-- Contact Us Section Ends -->

<!-- Footer Starts -->
<footer id="footer">
    <div class="container">
        <!-- Copyright Starts -->
        <div data-scroll-reveal="enter bottom and move 50px over 1.2s">
            <div class="container"><div class="row"><div class="col-lg-4 "><div class="holder clearfix">
                <g:img dir="images" file="iott.png" style="    max-width: 242px;"/>
                <span class="copyright">© <strong>2016</strong></span></div>
            </div>

                <div class="col-lg-4 ">

                    <div class="chat-block"><p class="push-right">
                        <a href="https://www.facebook.com/events/866446060144337/" target="_blank" >

                            <g:img dir="images" file="facebook_icon.png" style="     margin-top: 62px;   max-width: 242px;"/>
                        </a>
                    </p>
                    </div>
                </div>

                <div class="col-lg-4">

                            <g:img dir="images" file="logodepartment.png" style="    max-width: 300px;" class="img-rounded"/>

                </div>

                <div class="col-lg-4">

                    <g:img dir="images" file="ieee.png" style="    max-width: 200px;" class="img-rounded"/>

                </div>

            </div>


                <p data-scroll-reveal="enter over 3.2s">
                    © 2016 ENISo IoT CHALLENGE
                </p>

            </div>
            <!-- Copyright Ends -->
        </div>
</footer>
<!-- Footer Ends -->

<div id="spinner" class="spinner" style="display:none;">
    <g:message code="spinner.alt" default="Loading&hellip;"/>
</div>


<script>
    $(function () {
        window.scrollReveal = new scrollReveal();
        "use strict";

        // PreLoader
        $(window).load(function () {
            $(".loader").fadeOut(400);
        });


        // Backstretchs
        $("#header").backstretch("${assetPath(src: 'lol.jpg')}");
        %{--$("#services").backstretch("${assetPath(src: 'IOT-background.png')}");--}%
        %{--$("#contact").backstretch("${assetPath(src: 'pi_00628.jpg')}");--}%

        // Countdown
        $('.countdown').downCount({
            date: '04/14/2016 08:00:00',
            offset: +1
        });

        $('.carousel').carousel({
            interval: 5000 //changes the speed
        })

    });


    $(document).ready(function () {
//        var scene = document.getElementById('scene');
//        var parallax = new Parallax(scene);
        $(window).bind('scroll', function () {

            var navHeight = 700; // custom nav height
            ($(window).scrollTop() > navHeight) ? $('#bs-example-navbar-collapse-1').addClass('goToTop') : $('#bs-example-navbar-collapse-1').removeClass('goToTop');
        });
    });
</script>

</body>
</html>
