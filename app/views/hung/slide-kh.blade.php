<div class="slider_khach_hang">
	<div class="item active">
		<div class="images_kh">
			<img src="config/TRH21.jpg">
		</div>
		<div class="contebt_kh">
			<span>Bic Thủy từ Long An vừa đặt vòng </span>
			<i>(5 phút trước)</i>
		</div>
	</div>
	<div class="item">
		<div class="images_kh">
			<img src="config/TRH21.jpg">
		</div>
		<div class="contebt_kh">
			<span>Anh Long từ Hà Nội vừa đặt vòng </span>
			<i>(9 phút trước)</i>
		</div>
	</div>
	<div class="item">
		<div class="images_kh">
			<img src="config/TRH21.jpg">
		</div>
		<div class="contebt_kh">
			<span>Chị Hằng từ Nghệ An vừa đặt vòng </span>
			<i>(6 phút trước)</i>
		</div>
	</div>
	<div class="item">
		<div class="images_kh">
			<img src="config/TRH21.jpg">
		</div>
		<div class="contebt_kh">
			<span>CHị Hiền từ Hà Nội vừa đặt vòng </span>
			<i>(9 phút trước)</i>
		</div>
	</div>
	<div class="item">
		<div class="images_kh">
			<img src="config/TRH21.jpg">
		</div>
		<div class="contebt_kh">
			<span>Chị Thắm từ Bình Phước vừa đặt vòng </span>
			<i>(10 phút trước)</i>
		</div>
	</div>
	
</div>
<script>
jQuery(function() {

  
  // Loop the notification
  (function loop() {
      var rand = Math.round(Math.random() * 5000 ) + 8000;
      setTimeout(function() {
        changeNotification();
        loop();  
      }, rand);
  }());

  // Change notification
  function changeNotification() {
    showNotification();
    setTimeout(function() {
      hideNotification();
    }, 6000) // duration
  }
  
  // Show notification
  function showNotification() {
    jQuery(".slider_khach_hang").addClass("active");

    if(jQuery('.slider_khach_hang .item:first-child').hasClass('active')  ){
	 	jQuery('.slider_khach_hang').find('.item.active').next().addClass('active');
	   	jQuery('.slider_khach_hang').find('.item.active').prev().removeClass('active');
    }else if(jQuery('.slider_khach_hang .item:last-child').hasClass('active') ){
    	jQuery('.slider_khach_hang').find('.item.active').next().removeClass('active');
	   	jQuery('.slider_khach_hang .item:first-child').addClass('active');
	   	jQuery('.slider_khach_hang .item:last-child').removeClass('active');
    }else{
    	jQuery('.slider_khach_hang').find('.item.active').next().addClass('active');
	   	jQuery('.slider_khach_hang').find('.item.active').prev().removeClass('active');
    }

  }
  
  // Hide notification
  function hideNotification() {
    jQuery(".slider_khach_hang").removeClass("active");
    jQuery('.slider_khach_hang .item').first().remove('active');
  }

});
</script>

<style>
	.slider_khach_hang{
		position: relative;
		z-index: 9999999999999999;
		left: -100%;
		transition: all 2s ease;
		opacity: 0;
	}
	.slider_khach_hang.active{
		left: 0;
		opacity: 1;
	}
	
		.slider_khach_hang .items span{
			display: block;
			text-transform: uppercase;
		}

.contebt_kh {
    max-width: 200px;
    font-size: 13px;
}
.contebt_kh span {
    color:   #fff;
    display: block;
    padding: 0 15px;
}
	.slider_khach_hang .item.active{
		opacity: 1;
	}
	.slider_khach_hang .item {
	    background: rgba(0,0,0,.85);
	    width: 400px;
	    position: absolute;
	    top: 0;
	    left: 0;
	    opacity: 0;
	    display: flex;
	  	padding: 10px 10px 5px;
	    max-width: 248px;

	}
		.slider_khach_hang .item img{
			min-width: 60px;
			height: 50px;
		}
	.contebt_kh i {
	    color:   #fff; 
	    padding: 5px 10px;
	    display: block;
	    font-size: 11px;

	}
	
</style>



