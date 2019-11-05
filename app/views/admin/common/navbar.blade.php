<header class="main-header">
    <!-- Logo -->
    <a href="#" class="logo">
        <!-- mini logo for sidebar mini 50x50 pixels -->
        <span class="logo-mini">S.H.E</span>
        <!-- logo for regular state and mobile devices -->
        <span class="logo-lg"><img src="{{ asset('custom/img/logo1.png') }}" style="max-height: 50px;"></span>
    </a>

    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top" role="navigation">
        <!-- Sidebar toggle button-->
        <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
            <span class="sr-only">Menu</span>
        </a>

        <div class="navbar-custom-menu">
            <ul class="nav navbar-nav">
                <li class="user">
                    <a href="{{ action('AdminController@logout') }}"><i class="fa fa-power-off"></i> {{ trans('common.logout') }}</a>
                </li>
            </ul>
        </div>
    </nav>
</header>