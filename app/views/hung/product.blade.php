@include('hung.header')

    <div class="content-product" >
    	<!-- chen slide -->
    	@include('hung.slide-kh') 

       {{ Form::open(array('action' => array('OrderController@store'), 'method' => "POST", 'class' => 'layui-form')) }}
            @if($productFirst)
            <div id="image_top" class="image-p"> 
                <img src="{{ $productFirst->image_url}}" id="sizeimg"/>
            </div>
            @endif
  

        <div id="sizeselect" class="imgs">
            @foreach($products as $product)
            <div class="img" data-field="{{$product->color}}" data-price="{{$product->price}}" data-product-name="{{$product->text}}" data-product-code="{{$product->code}}" data-img="{{ $product->image_url}}" data-discount = "{{$discount}}"> 
                <div id="product_image_id" class="layui-elip" onclick="chooseProduct( {{$product->id }})">
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
           <select class="form-control" id="kind" name="kind_id" onchange="return changeKind();">
              <option value=""> Default </option>
              @foreach(AdminKind::lists('name', 'id') as $key => $value)
                <option value="{{$key}}"> {{$value}} </option>
              @endforeach 
           </select>
        </div>  

        <div class="form-group-p">
            <label>Kích thước</label>
            <select class="form-control" id="size" name="size_id" onchange="return changeSize();">
              <option value=""> Default </option>
              @foreach(Size::lists('name', 'id') as $key => $value)
                <option value="{{$key}}"> {{$value}} </option>
              @endforeach 
           </select>
        </div>
        <div class="layui-product-meta">
            <div class="layui-product-price"> 
                <span class="market-price"> <del id="pri-num">{{$productFirst->price + $productFirst->price * $discount/100 }}</del> </span>
                <span  id="promotion_price" class="sale-price"> {{$productFirst->price}}VNĐ</span>
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
            <span>({{$config->text_promotion_number}} người đã mua)</span>
        </div>
        <div class="content-ps">
            <div class="w-6">
             
                <div class="layui-product-num">
                    <span class="decrease">-</span>
                    <input id = "number_default" type="text" name="number" maxlength="2" class="layui-input" value="1" readonly>
                    <span class="increase">+</span>
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
   <span>{{$config->text_number_sale_off}}</span>
   <h3>Thời gian khuyến mại</h3>
   <div class="time_out">
        <span id="d"></span>
        <span id="t"></span>
        <span id="m"></span>
        <span id="s"></span>
   </div>
</div>
<div class="hbg"></div>

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
@include('hung.script')
@include('hung.footer')
