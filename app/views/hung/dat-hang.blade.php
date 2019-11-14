@include('hung.header')
      <div class="layui-container">
        <h1 class="title_oder"> Chi tiết thanh toán</h1>
        <div class="layui-main" style="padding-bottom: 0;">
          <!-- <form class="layui-form layui-form-pane" name="addorder" action="http://localhost/ionlinei.com/thong-bao.php" method="POST"> -->
            {{ Form::open(array('action' => array('OrderController@order'), 'method' => "POST", 'class' => 'layui-form layui-form-pane')) }}
            <input type="hidden" name="title" value="{{$product->text}}">
            <input type="hidden" name="number" value="{{$number}}">
            <input type="hidden" name="product_id" value="{{$product->id}}">
          	<div class="newAddress">
	            <div class="layui-form-item">
	              	<label> <b>Họ Và tên </b><span style="color: red">*</span> <i>(bắt buộc)</i></label>
	                <input type="text" name="fullname" lay-filter="name" autocomplete="off" class="layui-input" placeholder="Họ và tên" id = "ab_hoten_1553008285380" required>
	            </div>
	            <div class="layui-form-item">
	              	<label><b> Số điện thoại</b><span style="color: red">*</span> <i>(bắt buộc)</i></label>
	                <input type="text" name="phone_name" autocomplete="off" class="layui-input" placeholder="Số điện thoại" id ="ab_sodt_1553008285380" required>
	            </div>
	            <div class="layui-form-item">
	              	<label><b> Địa chỉ cụ thể</b><span style="color: red">*</span> <i>(bắt buộc)</i></label>
	              	<span class="note"><i>( Chú ý: địa chỉ càng cụ thể, nhân viên giao hàng càng dễ tìm)</i></span>
	              	<textarea name="address" id="address" required></textarea>
	          	</div>
	          	<h2>Ghi chú của khách hàng</h2>
	          	<div class="layui-form-item">
	              	<span class="note"><i>(không bắt buộc)</i></span>
	              	<textarea name="comment" id="content"></textarea>
	          	</div>
	   
          	</div>
           <h2 class="title_oders" style="font-weight: bold">Đơn hàng của bạn</h2>
          <div class="cartItems">
            <ul>
              <li class="list-item">
                <div class="item-inner" style="overflow:hidden;">
                  <div class="item-thumb"><img src="{{$product->image_url}}"></div>
                  <div class="item-info">
                    <h4 class="title">{{$product->text}} {{$sizeName}}</h4>
                    <?php
                   
                          function format_price($money, $cur){
                              $str = "";
                              if($money != 0){
                                  $num = (float)$money;
                                  //$str = sprintf("%01.0d", $num);
                                  $str = number_format($num,0,'.',',');
                                  $str .= $cur;
                                  $str = "<span>".$str."</span>";
                              }
                              return $str;
                          }

                           // // $n = $_GET["n"]; 
                           // $n = 8; 
                           // // $color = $_GET["color"];
                           // $color = 'xanh';
                           // $gia = 250000;
                           $priceAfterDiscountConfig = $product->price;
                           $total_price =  $number*$priceAfterDiscountConfig;
                           $discount_number = $discount->number;
                           if ($number >= $discount_number) {
                            $percent = $discount->percent;
                            $money_discount = $total_price * $percent/100;
                            $money_pay =  $total_price - $money_discount;
                           } else {
                            $money_discount = 0;
                            $money_pay =  $total_price;
                            $percent = 0;
                           }
                           
                      ?>
                    <!-- <p class="size">{{ $product->color }}-</p> -->
                    <p class="price"><!-- {{$product->price}} x --> {{$number}}</p>
                  </div>
                </div>
              </li>
            </ul>

          </div>
          <div class="cartOrder">
            <span id="allmoney">Giá trị đơn hàng<span> <?php echo  format_price($total_price, 'VNĐ'); ?> </span></span>
            <ul class="checkout-money" style="overflow: hidden;">
              <li class="item-money">{{$config->text_discount_payment}} <span>{{$percent}}%</span></li>
              <li class="item-money text-center" id="yf">Miễn phí giao hàng</li>
              <li class="item-money">Tổng tiền <span class="price_total"><?php echo  format_price($money_pay, 'VNĐ'); ?></span></li>
            </ul>
            <input type="hidden" name="total_price" value="{{$total_price}}">
            <input type="hidden" name="money_pay" value="{{$money_pay}}">
              <p class="thong_b">
          Bạn đang mua sắm an toàn.</br> Toàn bộ thông tin của khách hàng đặt tại trang Web này đều được bảo mật tuyệt đối.</br>
          Xin cảm ơn
          	
          </p>
          </div>

         
          <div class="cart-footer">
            <!-- <a id="sbm" href="http://localhost/ionlinei.com/thong-bao.php?n=<?php //echo $tong_tien ; ?> ">Xác nhận đặt hàng</a> -->
            <button id="button" type="submit" class="layui-btn btn_vipshop layui-btn-danger">Xác nhận đặt hàng</button>
          </div>
        <!-- </form> -->
        {{ Form::close() }}
      
        <!-- <div class="timetips layui-row">
          <ul>
            <li style="text-align: center; width:100%; color: #000000">{{$config->text_footer_order}}</li>
          </ul>
        </div> -->
      </div>
    </div>
  </div>
@include('hung.footer')
