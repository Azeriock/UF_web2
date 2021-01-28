<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <title>Mon site</title>

    <link type="text/css" rel="stylesheet" href="{{asset('css/bootstrap.min.css')}}" />

    <link type="text/css" rel="stylesheet" href="{{asset('css/slick.css')}}" />
    <link type="text/css" rel="stylesheet" href="{{asset('css/slick-theme.css')}}" />

    <link type="text/css" rel="stylesheet" href="{{asset('css/nouislider.min.css')}}" />

    <link rel="stylesheet" href="{{asset('css/font-awesome.min.css')}}">

    <link type="text/css" rel="stylesheet" href="{{asset('css/style2.css')}}" />
    <link rel="icon" type="image/png" sizes="32x32" href="/favicon-32x32.png">

    {{-- custom css --}}
    <style>
        @media only screen and (max-width: 767px){
            #head_links {
                visibility: hidden;
            }
            .custom_search_top {
                text-align:center;
            }

            .header-ctn {
                width: 100%;
            }
        }
    </style>

</head>

<body>
    <header>
        <div id="top-header">
            <div class="container">
                <ul class="header-links pull-right">
                    @if(session()->has('user'))
                      <li><a style="color:white" href="{{route('user.history')}}">{{session()->get('user')->full_name}} </a></li>  
                      <li><a href="{{route('user.logout')}}"><i class="fa fa-user-o"></i> Se déconnecter</a></li>
                    @else
                    <li><a href="{{route('user.login')}}"><i class="fa fa-user-o"></i> Se connecter</a></li>
                    
                    <li><a href="{{route('user.signup')}}"><i class="fa fa-user-o"></i> S'inscrire</a></li>
                    @endif
                    
                </ul>
            </div>
        </div>
        <div id="header">
            <div class="container">
                <div class="row">
                    <div class="col-md-3"></div>
                    <div class="col-md-6">
                        <div class="header-search">
                            <form action="{{route('user.search')}}" method="get">
                                <div class="custom_search_top" >
                                    <input class="input" style="border-radius: 40px 0px 0px 40px;" name="n" placeholder="Tapez ici">
                                    <button  class="search-btn">Chercher</button>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="col-md-3 clearfix">
                        <div class="header-ctn">
                            <div  class="dropdown">
                                <a class="dropdown-toggle " id="custom_shopping_cart" href="{{route('user.cart')}}">
                                    <i class="fa fa-shopping-cart"></i>
                                    <span>Mon panier</span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <nav id="navigation">
        <div class="container">
            <div id="responsive-nav">
                <ul class="main-nav nav navbar-nav">
                    <li class="{{Route::is('user.home') ? 'active' : ''}}"><a href="{{route('user.home')}}">Home</a></li>
                    @if(Route::is('user.search'))
                        @foreach($cat as $c)
                        <li class="{{$c->id == $a ? 'active' : ''}}"><a href="{{route('user.search.cat',['id'=>$c->id])}}" >{{$c->name}}</a></li>
                        @endforeach
                    @else
                        @foreach($cat as $c)
                        <li ><a href="{{route('user.search.cat',['id'=>$c->id])}}" >{{$c->name}}</a></li>
                        @endforeach
                    @endif
                </ul>
            </div>
        </div>
    </nav>

    @yield('content')

    <script src="{{asset('js/jquery.min.js')}}"></script>
    <script src="{{asset('js/bootstrap.min.js')}}"></script>
    <script src="{{asset('js/slick.min.js')}}"></script>
    <script src="{{asset('js/nouislider.min.js')}}"></script>
    <script src="{{asset('js/jquery.zoom.min.js')}}"></script>
    <script src="{{asset('js/main.js')}}"></script>
    <script src="{{asset('js/lib/jquery.js')}}"></script>
    <script src="{{asset('js/dist/jquery.validate.js')}}"></script>
    
</body>

</html>
