@include('hung.header')
<div class="layui-container">
	<div class="layui-main">
	@include('hung.slide-kh')


		<!-- <div class="swiper-container">
			<div class="swiper-wrapper"> 
				<iframe width="100%" height="" src="{{ $config->link_video }}" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
			</div>
		</div> -->
		 <div class="swiper-container">
            <div class="swiper-wrapper">
            		@if($config->link_video)
                    <iframe width="100%" height="auto" src="{{ $config->link_video }}" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                	@else
                	@foreach($topSlide as $slide)
					<div class="item">
						<img src="{{ url($slide->image_url) }}" width="100%" height="auto" />
	                </div>
					@endforeach
                	@endif
                
            </div>
        </div>

		<div class="layui-product-info">
			<div class="layui-product-meta">
				<h1 class="layui-product-name">{{$config->text_header}}</h1>

				<div class="layui-product-price"> 
					<span class="market-price"> <del>{{$config->price_header}}</del> </span>
					<span class="sale-price"> {{$config->sale_price_header}}</span>
				</div>
			</div>

			<div class="layui-buys">
				<span class="layui-right btn-100 ">{{$config->text_header_common}}</span>
				<span class="layui-right btn-100 ">{{$config->text2}}</span>
				<span class="layui-right btn-100 ">{{$config->text3}}</span>
			</div>
			<hr>
		</div>

		<div class="layui-product-info">
			<div class="layui-product-size">
				<div class="layui-product-images"> <img src="{{ !empty($config->image_body) ? url($config->image_body) : NO_IMG }}" alt="" /> </div>
			</div>
		</div>

		<!--  slider tesmon -->

		<div class="layui-product-info infor-bottom">
			<h2 class="title_tesmon">Đánh giá của khách hàng</h2>
			<div class="tesmon_items">
				@foreach($belowSlide as $slide)
				<div class="tesmon_item">
					<figure>
						<img src="{{ url($slide->image_url) }}" alt="cảm nhận khách hàng">
					</figure>
				</div>
				@endforeach
			</div>
		</div>

		
		
		<div class="layui-footer layui-product-footer">
			<div class="layui-buy">
				<a href="{{$config->message_to}}"><span class="layui-right" style="margin-right: 2%;">{{$config->text_footer_left}}</span></a>
				<a href="{{ action('LandingController@getBuy') }}" class="layui-btn layui-btn-danger layui-btn2" style="text-decoration:none"><span class="layui-right">{{$config->text_footer_right}}</span></a>
			</div>
		</div>
		
		<div id="totop"></div>
	
	<script type="text/javascript">
		function chooseProduct(product_id)
		{
			$.ajax({
		        url: "/ajax/product",
		        type: "post",
		        data: {
		        	product_id : product_id
		        } ,
		        success: function (data) {
		        	console.log(data);
		        	$('#remove_product').remove();
		        	// $('#number_default').remove();
		        	// $('#number_default').val() = 1;
		        	// $('input[name="number"]').val(1);
		           var text = '<input id="price" type="hidden" name="price" value="'+data['price']+'">' + '<input id="color" type="hidden" name="product_id" value="'+product_id+'">'+
		           '<input type="hidden" id="price_first" name="price_first" value="'+data['price']+'">'
		           ;
					$('#input-hidden').html(text);               

		        },
		        error: function(jqXHR, textStatus, errorThrown) {
		           console.log(textStatus, errorThrown);
		        }
		    });
		}

	</script>
	<!-- Facebook Pixel Code -->
<script>
!function(f,b,e,v,n,t,s)
{if(f.fbq)return;n=f.fbq=function(){n.callMethod?
n.callMethod.apply(n,arguments):n.queue.push(arguments)};
if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version='2.0';
n.queue=[];t=b.createElement(e);t.async=!0;
t.src=v;s=b.getElementsByTagName(e)[0];
s.parentNode.insertBefore(t,s)}(window,document,'script',
'https://connect.facebook.net/en_US/fbevents.js');
 fbq('init', '192099611408702'); 
fbq('track', 'PageView');
</script>
<noscript>
 <img height="1" width="1" 
src="https://www.facebook.com/tr?id=192099611408702&ev=PageView
&noscript=1"/>
</noscript>
<!-- End Facebook Pixel Code -->
@include('hung.footer')


	
