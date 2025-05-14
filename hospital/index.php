<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>CareMed Hospital</title>
    <link rel="icon" type="image/x-icon" href="assets/images/caremed_logo.png">

    <link rel="shortcut icon" href="assets/images/fav.jpg">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/fontawsom-all.min.css">
    <link rel="stylesheet" href="assets/css/animate.css">
    <link rel="stylesheet" type="text/css" href="assets/css/style.css" />
</head>

<body>
    <nav class="navbar fixed-top navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#">
            <img src="assets/images/caremed_logo.png" width="50" height="50" class="d-inline-block" alt="">
            CareMed
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
            <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
                <li class="nav-item active">
                    <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#logins">Logins</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#about_us">About Us</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#gallery">Our Gallery</a>
                </li>
            </ul>
            <div class="my-2 my-lg-0">
                <a href="hms/user-login.php" target="">
                    <button class="btn btn-success my-2 my-sm-0" type="submit">Book Appointment</button>
                </a>
            </div>
        </div>
    </nav>

    <div class="slider-detail mt-5">
        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="d-block w-100" src="assets/images/slider/slider_1.png" alt="First slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="assets/images/slider/slider_2.png" alt="Second slide">
                </div>
                <div class="carousel-item">
                    <a href="hms/user-login.php" target="">
                        <img class="d-block w-100" src="assets/images/slider/slider_3.png" alt="Third slide">
                    </a>
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden=" true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>

    <section id="logins" class="our-blog container-fluid">
        <div class="container">
            <h2 class="text-center py-3">Logins</h2>
            <div class="col-sm-12 blog-cont">
                <div class="row no-margin">
                    <div class="col-sm-4 blog-smk">
                        <div class="blog-single">
                            <img src="assets/images/home_patient.jpg" alt="">
                            <div class="blog-single-det">
                                <h6>Patient Login</h6>
                                <a href="hms/user-login.php" target="">
                                    <button class="btn btn-success btn-sm">Click Here</button>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4 blog-smk">
                        <div class="blog-single">
                            <img src="assets/images/home_doctor.jpg" alt="">
                            <div class="blog-single-det">
                                <h6>Doctors login</h6>
                                <a href="/hms/doctor" target="">
                                    <button class="btn btn-success btn-sm">Click Here</button>
                                </a>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-4 blog-smk">
                        <div class="blog-single">

                            <img src="assets/images/home_admin.jpg" alt="">

                            <div class="blog-single-det">
                                <h6>Admin Login</h6>

                                <a href="hms/admin" target="">
                                    <button class="btn btn-success btn-sm">Click Here</button>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section id="about_us" class="container py-5">
        <div class="row align-items-center">
            <div class="w-100 col-6">
                <img src="assets/images/home_why.jpg" />
            </div>
            <div class="col-6">
                <h3>About Our Hospital</h3>
                <p>
                    Welcome to CareMed Hospital, where compassionate care meets cutting-edge medicine. At CareMed, we are committed to providing exceptional healthcare services to our community with a focus on patient-centered care, innovation, and excellence.
                </p>
                <p class="my-3">
                    Our mission at CareMed Hospital is to enhance the health and well-being of our patients by delivering high-quality, personalized healthcare services in a caring and compassionate environment. We strive to exceed the expectations of our patients and their families through continuous improvement and innovation in medical care.
                </p>
            </div>
        </div>
    </section>

    <section id="gallery" class="container-fluid bg-white">
        <div class="container">
            <h2 class="text-center py-3">Our Gallery</h2>
            <div class="row">
                <div class="col-lg-4 col-md-12 mb-4 mb-lg-0">
                    <img src="assets/images/gallery/gallery_01.jpg" class="w-100 shadow-1-strong rounded mb-4" alt="Boat on Calm Water" />

                    <img src="assets/images/gallery/gallery_02.jpg" class="w-100 shadow-1-strong rounded mb-4" alt="Wintry Mountain Landscape" />
                </div>

                <div class="col-lg-4 mb-4 mb-lg-0">
                    <img src="assets/images/gallery/gallery_03.jpg" class="w-100 shadow-1-strong rounded mb-4" alt="Mountains in the Clouds" />

                    <img src="assets/images/gallery/gallery_04.jpg" class="w-100 shadow-1-strong rounded mb-4" alt="Boat on Calm Water" />
                </div>

                <div class="col-lg-4 mb-4 mb-lg-0">
                    <img src="assets/images/gallery/gallery_05.jpg" class="w-100 shadow-1-strong rounded mb-4" alt="Waves at Sea" />

                    <img src="assets/images/gallery/gallery_06.jpg" class="w-100 shadow-1-strong rounded mb-4" alt="Yosemite National Park" />
                </div>
            </div>
        </div>
    </section>

    <footer class="bg-body-tertiary text-center text-lg-start copy">
        <div class="text-center">
            © 2024 Copyright: CareMed.com
        </div>
    </footer>

</body>

<script src="assets/js/jquery-3.2.1.min.js"></script>
<script src="assets/js/popper.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/plugins/scroll-nav/js/jquery.easing.min.js"></script>
<script src="assets/plugins/scroll-nav/js/scrolling-nav.js"></script>
<script src="assets/plugins/scroll-fixed/jquery-scrolltofixed-min.js"></script>

<script src="assets/js/script.js"></script>

</html>