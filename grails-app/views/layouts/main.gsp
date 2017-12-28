<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>
        <g:layoutTitle default="ENISo IoT Challenge"/>
    </title>
    <!-- Bootstrap Core CSS -->
    <asset:stylesheet href="bootstrap.min.css"/>
    <!-- Google Web Fonts -->
    %{--<link href='http://fonts.googleapis.com/css?family=Coustard' rel='stylesheet' type='text/css'>--}%
    <link href='http://fonts.googleapis.com/css?family=Alegreya+Sans' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Abel' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Ubuntu' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Dosis' rel='stylesheet' type='text/css'>
    %{--<link href='http://fonts.googleapis.com/css?family=Raleway:400,300' rel='stylesheet'--}%
          %{--type='text/css'>--}%
    %{--<asset:stylesheet href="font-awesome.min.css"/>--}%
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
    <asset:stylesheet href="jasny-bootstrap.min.css"/>
    <asset:stylesheet href="style.css"/>
    <!--[if lt IE 9]>
    <asset:javascript src="ie8-responsive-file-warning.js"/>
    <![endif]-->
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <!-- Fav and touch icons -->
    <link rel="apple-touch-icon" sizes="57x57" href="${assetPath(src: 'apple-icon-57x57.png')}">
    <link rel="apple-touch-icon" sizes="60x60" href="${assetPath(src: 'apple-icon-60x60.png')}">
    <link rel="apple-touch-icon" sizes="72x72" href="${assetPath(src: 'apple-icon-72x72.png')}">
    <link rel="apple-touch-icon" sizes="76x76" href="${assetPath(src: 'apple-icon-76x76.png')}">
    <link rel="apple-touch-icon" sizes="114x114" href="${assetPath(src: 'apple-icon-114x114.png')}">
    <link rel="apple-touch-icon" sizes="120x120" href="${assetPath(src: 'apple-icon-120x120.png')}">
    <link rel="apple-touch-icon" sizes="144x144" href="${assetPath(src: 'apple-icon-144x144.png')}">
    <link rel="apple-touch-icon" sizes="152x152" href="${assetPath(src: 'apple-icon-152x152.png')}">
    <link rel="apple-touch-icon" sizes="180x180" href="${assetPath(src: 'apple-icon-180x180.png')}">
    <link rel="icon" type="image/png" sizes="192x192"  href="${assetPath(src: 'android-icon-192x192.png')}">
    <link rel="icon" type="image/png" sizes="32x32" href="${assetPath(src: 'favicon-32x32.png')}">
    <link rel="icon" type="image/png" sizes="96x96" href="${assetPath(src: 'favicon-96x96.png')}">
    <link rel="icon" type="image/png" sizes="16x16" href="${assetPath(src: 'favicon-16x16.png')}">
    <link rel="manifest" href="${assetPath(src: 'manifest.json')}">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="msapplication-TileImage" content="${assetPath(src: 'ms-icon-144x144.png')}">
    <meta name="theme-color" content="#ffffff">
    <g:layoutHead/>

</head>
<body>
<div id="fb-root"></div>
<script>(function(d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.5";
    fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>

<!-- Bootstrap core JavaScript -->
<asset:javascript src="jquery-1.11.1.min.js"/>
<asset:javascript src="bootstrap.min.js"/>
<asset:javascript src="jquery.backstretch.min.js"/>
<asset:javascript src="scrollReveal.js"/>
<asset:javascript src="jquery.downCount.js"/>
<asset:javascript src="jasny-bootstrap.min.js"/>
<asset:javascript src="animatescroll.min.js"/>
<asset:javascript src="parallax.min.js"/>
<asset:javascript src="custom.js"/>



<g:layoutBody/>



</body>
</html>
