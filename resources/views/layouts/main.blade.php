<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href= "/public/img/fav-devar.png" />

    <!-- Font Awesome icons (free version)-->
    <script src="https://use.fontawesome.com/releases/v5.13.0/js/all.js" crossorigin="anonymous"></script>

    <!-- Scripts -->
    <script src="{{ env('SUB') }}/public/js/app.js" defer></script>

    <!-- Fonts -->
{{--    <link rel="dns-prefetch" href="//fonts.gstatic.com">--}}
{{--    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">--}}

    <!-- Google fonts-->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
    <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css" />

    <!-- Styles -->
    <link href="{{ env('SUB') }}/public/css/custom.css" rel="stylesheet">
    <link href="{{ env('SUB') }}/public/css/styles.css" rel="stylesheet">
    <link href="{{ env('SUB') }}/public/css/app.css" rel="stylesheet">

    <title>VitCheVue</title>
</head>

<body id="page-top">

    <nav class="navbar navbar-expand-lg bg-blue1 text-uppercase fixed-top" id="mainNav">
        <div class="container">
            <a class="navbar-brand js-scroll-trigger" href="#page-top">VIT_CHE</a>
            <button class="navbar-toggler navbar-toggler-right text-uppercase font-weight-bold bg-primary text-white rounded" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                Menu
                <i class="fas fa-bars"></i>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="#experience">My experience</a></li>
                    <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="#aboutme">About Me</a></li>
                    <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="#myapps">My APPs</a></li>
                    <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="#contact">Contact</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <div id="app">
        <div class="container">
            <avatar-component v-bind:avatar="{{ $avatar }}" v-bind:sub="{{ $sub }}"></avatar-component>

            <experience-component v-bind:jobs="{{ $jobs }}" v-bind:letter="{{ $letter }}"></experience-component>

            <about-component v-bind:about="{{ $aboutme }}"></about-component>

            <apps-component v-bind:projects="{{ $projects }}"></apps-component>

            <contact-component></contact-component>

            <copyright-component></copyright-component>
        </div>

    </div>

    <!-- Bootstrap core JS-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js"></script>
<!-- Third party plugin JS-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
<!-- Core theme JS-->
<script src="{{ env('SUB') }}/public/js/scripts.js"></script>
<script src="{{ env('SUB') }}/public/js/custom.js"></script>

</body>
</html>

