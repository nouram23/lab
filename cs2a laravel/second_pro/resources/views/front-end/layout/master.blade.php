<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>BizNews - Free News Website Template</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">
    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">
    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;600;700&display=swap" rel="stylesheet">  
    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.0/css/all.min.css" rel="stylesheet">
    <!-- Libraries Stylesheet -->
    <link href="{{asset('assets\lib/owlcarousel/assets/owl.carousel.min.css')}}" rel="stylesheet">
    <!-- Customized Bootstrap Stylesheet -->
    <link href="{{asset('assets\css/style.css')}}" rel="stylesheet">
</head>

<body>
    <!-- Topbar Start -->

 @include('front-end.layout.topbar')

    <!-- Topbar End -->
    <!-- Navbar Start -->
    @include('front-end.layout.nav')

    <!-- Navbar End -->
    <!-- Main News Slider Start -->
   @yield('slider_zurag')

    <!-- Main News Slider End -->
    <!-- Featured News Slider Start -->
   @yield('top_section')
    <!-- Featured News Slider End -->
    <!-- News With Sidebar Start -->
    <div class="container-fluid">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    @yield('main_section')
                </div>  
                <div class="col-lg-4">
                    <!-- Social Follow Start -->
                    @include('front-end.layout.sidebar')
                    <!-- Popular News End -->
                </div>
            </div>
        </div>
    </div>
    <!-- News With Sidebar End -->
    <!-- Footer Start -->
    @include('front-end.layout.footer')
    <!-- Footer End -->

    <!-- Back to Top -->
    <a href="#" class="btn btn-primary btn-square back-to-top"><i class="fa fa-arrow-up"></i></a>
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
    <script src="{{asset('assets\lib/easing/easing.min.js')}}"></script>
    <script src="{{asset('assets\lib/owlcarousel/owl.carousel.min.js')}}"></script>

    <!-- Template Javascript -->
    <script src="{{asset('assets\js/main.js')}}"></script>
</body>

</html>