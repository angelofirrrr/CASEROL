<!DOCTYPE html>
<!--[if IE 7]><html class="ie ie7"><![endif]-->
<!--[if IE 8]><html class="ie ie8"><![endif]-->
<!--[if IE 9]><html class="ie ie9"><![endif]-->
<html lang="{{ App::currentLocale() }}" dir="{{ App::currentLocale() == 'ar'? 'rtl' : 'ltr' }}">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="format-detection" content="telephone=no">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <link href="apple-touch-icon.png" rel="apple-touch-icon">

    <meta name="author" content="Nghia Minh Luong">
    <meta name="keywords" content="Default Description">
    <meta name="description" content="Default keyword">
    <title>{{ __($title) }}</title>
    <!-- Fonts-->
    <link href="https://fonts.googleapis.com/css?family=Archivo+Narrow:300,400,700%7CMontserrat:300,400,500,600,700,800,900" rel="stylesheet">
    <link rel="stylesheet" href="{{ asset('assets/front/plugins/font-awesome/css/font-awesome.min.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/front/plugins/ps-icon/style.css') }}">
    <!-- CSS Library-->
    @if (App::currentLocale() == 'ar')
    <link rel="stylesheet" href="{{ asset('assets/front/plugins/bootstrap/dist/css/bootstrap.min.rtl.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/front/plugins/owl-carousel/assets/owl.carousel.rtl.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/front/plugins/jquery-bar-rating/dist/themes/fontawesome-stars.rtl.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/front/plugins/slick/slick/slick.rtl.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/front/plugins/bootstrap-select/dist/css/bootstrap-select.min.rtl.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/front/plugins/Magnific-Popup/dist/magnific-popup.rtl.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/front/plugins/jquery-ui/jquery-ui.min.rtl.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/front/plugins/revolution/css/settings.rtl.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/front/plugins/revolution/css/layers.rtl.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/front/plugins/revolution/css/navigation.rtl.css') }}">
    @else
    <link rel="stylesheet" href="{{ asset('assets/front/plugins/bootstrap/dist/css/bootstrap.min.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/front/plugins/owl-carousel/assets/owl.carousel.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/front/plugins/jquery-bar-rating/dist/themes/fontawesome-stars.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/front/plugins/slick/slick/slick.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/front/plugins/bootstrap-select/dist/css/bootstrap-select.min.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/front/plugins/Magnific-Popup/dist/magnific-popup.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/front/plugins/jquery-ui/jquery-ui.min.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/front/plugins/revolution/css/settings.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/front/plugins/revolution/css/layers.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/front/plugins/revolution/css/navigation.css') }}">
    @endif
    <!-- Custom-->
    @if (App::currentLocale() == 'ar')
    <link rel="stylesheet" href="{{ asset('assets/front/css/style.rtl.css') }}">
    @else
    <link rel="stylesheet" href="{{ asset('assets/front/css/style.css') }}">
    @endif
  </head>
  <!--[if IE 7]><body class="ie7 lt-ie8 lt-ie9 lt-ie10"><![endif]-->
  <!--[if IE 8]><body class="ie8 lt-ie9 lt-ie10"><![endif]-->
  <!--[if IE 9]><body class="ie9 lt-ie10"><![endif]-->
  <body class="ps-loading">
    <div class="header--sidebar"></div>
    <header class="header">
      <div class="header__top">
        <div class="container-fluid">
          <div class="row">
                <div class="col-lg-6 col-md-8 col-sm-6 col-xs-12 "></div>
                <div class="col-lg-6 col-md-4 col-sm-6 col-xs-12 ">
                  <div class="header__actions">
                    @auth
                    <a href="{{ route('profile.show', Auth::id()) }}"><i class="fa fa-user"></i>{{ ' '.Auth::user()->name }}</a>
                    <a href="#" onclick="event.preventDefault(); document.getElementById('logout').submit()">{{ __('Log Out') }}</a>
                    <form action="{{ route('logout') }}" method="post" id="logout" style="display: none">
                    @csrf
                    </form>
                    @else
                    <a href="{{ route('login') }}">{{ __('Login') }}</a>
                    <a href="{{ route('register') }}">{{ __('Register') }}</a>
                    @endauth
                  </div>
                </div>
          </div>
        </div>
      </div>
      <nav class="navigation">
        <div class="container-fluid">
          <div class="navigation__column left">
            <h1>CASEROLE</h1>
          </div>
          <div class="navigation__column center">
                <ul class="main-menu menu">
                  <li class="menu-item menu-item-has-children dropdown"><a href="{{ route('home') }}">{{ __('Home') }}</a></li>
                  <li class="menu-item"><a href="#">{{ __('Product') }}</a></li>
                  <li class="menu-item"><a href="#">{{ __('Wishlist') }}</a></li>
                  <li class="menu-item"><a href="#">{{ __('About Us') }}</a></li>
                  <li class="menu-item"><a href="#">{{ __('Contact') }}</a></ul>
                  </li>
                </ul>
          </div>
        </div>
      </nav>
    </header>
    <div class="header-services">
      <div class="ps-services owl-slider" data-owl-auto="true" data-owl-loop="true" data-owl-speed="7000" data-owl-gap="0" data-owl-nav="true" data-owl-dots="false" data-owl-item="1" data-owl-item-xs="1" data-owl-item-sm="1" data-owl-item-md="1" data-owl-item-lg="1" data-owl-duration="1000" data-owl-mousedrag="on">
        <p class="ps-service"><strong>Services</strong>: Catering Services 1</p>
        <p class="ps-service"><strong>Services</strong>: Catering Services 2</p>
        <p class="ps-service"><strong>Services</strong>: Catering Services 3</p>
      </div>
    </div>
    <main class="ps-main">

      <x-alert/>

    </main>
    <!-- JS Library-->
    <script type="text/javascript" src="{{ asset('assets/front/plugins/jquery/dist/jquery.min.js') }}"></script>
    <script type="text/javascript" src="{{ asset('assets/front/plugins/bootstrap/dist/js/bootstrap.min.js') }}"></script>
    <script type="text/javascript" src="{{ asset('assets/front/plugins/jquery-bar-rating/dist/jquery.barrating.min.js') }}"></script>
    <script type="text/javascript" src="{{ asset('assets/front/plugins/owl-carousel/owl.carousel.min.js') }}"></script>
    <script type="text/javascript" src="{{ asset('assets/front/plugins/gmap3.min.js') }}"></script>
    <script type="text/javascript" src="{{ asset('assets/front/plugins/imagesloaded.pkgd.js') }}"></script>
    <script type="text/javascript" src="{{ asset('assets/front/plugins/isotope.pkgd.min.js') }}"></script>
    <script type="text/javascript" src="{{ asset('assets/front/plugins/bootstrap-select/dist/js/bootstrap-select.min.js') }}"></script>
    <script type="text/javascript" src="{{ asset('assets/front/plugins/jquery.matchHeight-min.js') }}"></script>
    <script type="text/javascript" src="{{ asset('assets/front/plugins/slick/slick/slick.min.js') }}"></script>
    <script type="text/javascript" src="{{ asset('assets/front/plugins/elevatezoom/jquery.elevatezoom.js') }}"></script>
    <script type="text/javascript" src="{{ asset('assets/front/plugins/Magnific-Popup/dist/jquery.magnific-popup.min.js') }}"></script>
    <script type="text/javascript" src="{{ asset('assets/front/plugins/jquery-ui/jquery-ui.min.js') }}"></script>
  <!-- Custom scripts-->
    <script type="text/javascript" src="{{ asset('assets/front/js/main.js') }}"></script>
    <script type="text/javascript" src="{{ asset('js/cart.js') }}"></script>
  </body>
</html>
