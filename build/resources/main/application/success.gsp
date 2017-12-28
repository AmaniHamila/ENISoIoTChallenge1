<!doctype html>
<html lang="en">
<head>
    <title>ENISo IoT Challenge</title>
</head>
<body >

    <!-- Preloader Starts -->
    <div class="loader">
    </div>


    <!-- Services Section Starts -->
    <section id="services" style="position: absolute;top: 50%;width: 100%; transform: translateY(-50%);">
        <div class="services-overlay">
            <div class="container">
                <!-- Main Heading Starts -->
                <div class="main-head">

                    <h2 data-scroll-reveal="enter top and move 50px over 1.2s" align="center">Thank you</h2>

                  <p>We acknowledge receipt of your resume and application
                      <br/> And appreciate your interest !
                      <br/> <g:link controller="home" action="index">

                      <i class="fa fa-angle-left"></i> Back </g:link></p>
                </div>
                <!-- Main Heading Ends -->

                <!-- Services List Ends -->
            </div>
        </div>
    </section>
    <!-- Services Section Ends -->


<script>
    $(function() {
        window.scrollReveal = new scrollReveal();
        "use strict";

        // PreLoader
        $(window).load(function() {
            $(".loader").fadeOut(400);
        });

        // Backstretchs
        //$("#services").backstretch("${assetPath(src: 'success2.jpg')}");


        $.backstretch("${assetPath(src: 'success2.jpg')}");

    });
</script>

</body>
</html>
