<aside class="main-sidebar">
    <section class="sidebar">
        <ul class="sidebar-menu">
            <li>
                <a href="{{ action('AdminConfigController@getConfig') }}">
                    <i class="fa fa-unlock-alt"></i> <span>Config</span>
                </a>
            </li>
            <li>
                <a href="{{ action('SlideController@index') }}">
                    <i class="fa fa-unlock-alt"></i> <span>Slide</span>
                </a>
            </li>
            <li>
                <a href="{{ action('CommentController@index') }}">
                    <i class="fa fa-unlock-alt"></i> <span>Order slide top</span>
                </a>
            </li>
            <!-- <li>
                <a href="{{ action('CommentOrderController@index') }}">
                    <i class="fa fa-unlock-alt"></i> <span>Order comment</span>
                </a>
            </li> -->
            <li>
                <a href="{{ action('ProductController@index') }}">
                    <i class="fa fa-unlock-alt"></i> <span>Product</span>
                </a>
            </li>
            <li>
                <a href="{{ action('AdminOrderController@index') }}">
                    <i class="fa fa-unlock-alt"></i> <span>Order</span>
                </a>
            </li>
            <li>
                <a href="{{ action('SizeController@index') }}">
                    <i class="fa fa-unlock-alt"></i> <span>Size(Kích thước)</span>
                </a>
            </li>
            <li>
                <a href="{{ action('KindController@index') }}">
                    <i class="fa fa-unlock-alt"></i> <span>Kind(Hình thức)</span>
                </a>
            </li>
            <li>
                <a href="{{ action('AdminDiscountController@index') }}">
                    <i class="fa fa-unlock-alt"></i> <span>Discount</span>
                </a>
            </li>
        </ul>
    </section>
</aside>