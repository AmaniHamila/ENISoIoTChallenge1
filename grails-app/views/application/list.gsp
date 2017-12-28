<!doctype html>
<html lang="en">
<head>
    <title>ENISo IoT Challenge</title>
</head>

<body>

<!-- Preloader Starts -->
<div class="loader">
</div>


<!-- Services Section Starts -->
<section id="services">
    <div class="services-overlay">
        <div class="container">
            <!-- Main Heading Starts -->
            <div class="main-head">
                <h2 data-scroll-reveal="enter top and move 50px over 1.2s" align="center">Applications list</h2>
                <table class="table">
                    <thead>
                    <tr>
                        <th>#</th>
                        <th>Team Name</th>
                        <th>Students</th>
                        <th>CV</th>
                    </tr>
                    </thead>
                <tbody style="    text-align: left;">
                    <g:each in="${applications}" status="i" var="application">
                        <tr>
                            <th scope="row">${i+1}</th>
                            <td>${application.teamName}</td>
                            <td>
                                <ul>
                                    <li>${application.student1} (${application.email1}) </li>
                                    <li>${application.student2} (${application.email2}) </li>
                                    <li>${application.student3} (${application.email3}) </li>
                                    <li>${application.student4} (${application.email4}) </li>
                                    <li>${application.student5} (${application.email5}) </li>
                                    <li>${application.student6} (${application.email6}) </li>
                                </ul>
                            </td>
                            <td><g:link  uri="/cv/${application.cvPath}" absolute="true"> ${application.cvPath}</g:link></td>
                        </tr>


                    </g:each>
                </tbody>
                </table>
            </div>
            <!-- Main Heading Ends -->

            <!-- Services List Ends -->
        </div>
    </div>
</section>
<!-- Services Section Ends -->


<script>
    $(function () {
        window.scrollReveal = new scrollReveal();
        "use strict";

        // PreLoader
        $(window).load(function () {
            $(".loader").fadeOut(400);
        });

        // Backstretchs
        %{--$("#header").backstretch("${assetPath(src: '3.jpg')}");--}%
        %{--$("#services").backstretch("${assetPath(src: '3.jpg')}");--}%

        // Countdown
        $('.countdown').downCount({
            date: '04/13/2016 00:00:00',
            offset: +10
        });

    });
</script>

</body>
</html>
