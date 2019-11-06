@include('hung.header')

    <div class="content-product" >
    	<!-- chen slide -->
    	@include('hung.slide-kh') 

       {{ Form::open(array('action' => array('OrderController@store'), 'method' => "POST", 'class' => 'layui-form')) }}
            @if($productFirst)
            <div class="image-p"> 
                <img src="{{ $productFirst->image_url}}" id="sizeimg"/>
            </div>
          
            @endif
  

        <div id="sizeselect" class="imgs">
            @foreach($products as $product)
            <div class="img" data-field="{{$product->color}}" data-price="{{$product->price}}" data-product-name="{{$product->text}}" data-product-code="{{$product->code}}" data-img="{{ $product->image_url}}" data-discount = "{{$discount}}"> 
                <div class="layui-elip" onclick="chooseProduct( {{$product->id }})">
                    <img src="{{ $product->image_url}}" > 
                </div>
            </div>
            @endforeach
        </div>
          <input type="hidden" name="discount_default" value="{{$discount}}">
        <div class="title_p">
            <h1 class="tite-p"> Vòng tay ngọc lượng tử Terahertz</h1>
        </div>
        <div class="form-group-p">
            <label>Hình Thức</label>
           <select id="loai">
               <option value="loai-1">hạt mài facet </option>
               <option value="loai-2">hạt mài facet Loại 2</option>
               <option value="loai-3">hạt mài facet Loại 3</option>
               <option value="loai-4">hạt mài facet Loại 4</option>
               <option value="loai-5">hạt mài facet Loại 5</option>
               <option value="loai-6">hạt mài facet Loại 6</option>
           </select>
           <input id='loai-hat' type="hidden" name="loai" value="loai-1"> <!-- lấy giá trị của hình thức, đã viết js lấy tham số -->
        </div>  

        <div class="form-group-p">
            <label>Kích thước</label>
            {{  Form::select('size', Size::lists('name', 'id'), array('class' => 'form-control' )) }}
             <input id="kt" type="hidden" name="kichthuoc" value="6">    <!-- lấy giá trị của kích thước,  đã viết js lấy tham số -->
        </div>
        <div class="layui-product-meta">
            <div class="layui-product-price"> 
                <span class="market-price"> <del id="pri-num">{{$productFirst->price}}</del> </span>
                <span  id="promotion_price" class="sale-price"> {{$productFirst->price - ($productFirst->price * $config->discount_default/100) }} VNĐ</span>
                 <input type="hidden" id="price_first" name="price_first" value="{{$productFirst->price}}">
                 <input type="hidden" name="product_id_first" value="{{$productFirst->id}}">
            </div>
        </div>
        <div  class="ranting">
            <span class="star">
                <i class="fa fa-star" aria-hidden="true"></i>
                <i class="fa fa-star" aria-hidden="true"></i>
                <i class="fa fa-star" aria-hidden="true"></i>
                <i class="fa fa-star" aria-hidden="true"></i>
                <i class="fa fa-star" aria-hidden="true"></i> 
            </span>
            <span>(872 người đã mua)</span>
        </div>
        <div class="content-ps">
            <div class="w-6">
             
                <div class="layui-product-num">
                    <button type="button" class="decrease">-</button>
                    <input id = "number_default" type="text" name="number" maxlength="2" class="layui-input" value="1" readonly>
                    <button type="button" class="increase">+</button>
                </div>
            </div> 
             <div class="mobile_hihe remove_a" >
                <a href="{{$config->message_to}}">{{$config->text_footer_left}}</a> 
            </div>
        </div>
        <div id="input-hidden" class="choose-product"></div>
        <input type="hidden" name="product_id_first" value="{{$productFirst->id}}"/>

        <div class="layui-buy-footer layui-row">
            <div id="remove_product">
            <input type="hidden" id="price_first" name="price_first" value="{{$productFirst->price}}">
            </div>
           
            <div class="col-6" id="buy">
                <input type="submit" value="Bước tiếp theo" lay-filter="nowBuy" lay-submit style="font-size: 15px;">
            </div>
        </div>

        {{Form::close()}}
    </div>


<div class="count_time">
   <span> chỉ còn 155 sản phẩm</span>
   <h3>Thời gian khuyến mại</h3>
   <div class="time_out">
        <span id="d"></span>
        <span id="t"></span>
        <span id="m"></span>
        <span id="s"></span>
   </div>
    <script>
    // Set the date we're counting down to
    var countDownDate = new Date("Jan 1, 2020 15:37:25").getTime();

    // Update the count down every 1 second
    var x = setInterval(function() {

      // Get today's date and time
      var now = new Date().getTime();

      // Find the distance between now and the count down date
      var distance = countDownDate - now;

      // Time calculations for days, hours, minutes and seconds
      var days = Math.floor(distance / (1000 * 60 * 60 * 24));
      var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
      var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
      var seconds = Math.floor((distance % (1000 * 60)) / 1000);

      // Display the result in the element with id="demo"
      document.getElementById("d").innerHTML = days + " </br>DAYS "; 
      document.getElementById("t").innerHTML = hours + "</br>HOUR"; 
      document.getElementById("m").innerHTML = minutes + "</br>MINS"; 
      document.getElementById("s").innerHTML = seconds + "</br>SECS"; 





      + hours + "h "
      + minutes + "m " + seconds + "s ";

      // If the count down is finished, write some text
      if (distance < 0) {
        clearInterval(x);
        document.getElementById("demo").innerHTML = "EXPIRED";
      }
    }, 1000);
    </script>



</div>


<div class="hbg"></div>

<script type="text/javascript">
	jQuery(document).ready(function($) {

		//  lấy giá trị select loại hat
		$('#loai').change(function(event) {
			 var loai = $(this).val();
			 $('#loai-hat').val(loai);
		});

		//  lấy giá trị select kích thước
		$('#kichthuoc').change(function(event) {
			 var kichthuoc = $(this).val();
			 $('#kt').val(kichthuoc);
		});
		
	});


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
<script type="text/javascript">
   var discount = "<?php echo $discount; ?>";
    console.log(discount);
</script>
@include('hung.footer')
