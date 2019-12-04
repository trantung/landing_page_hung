<script>
// Set the date we're counting down to
var date_config = "<?php echo $date_config; ?>";
// var countDownDate = new Date(date_config).getTime();
var countDownDate = new Date(date_config.replace(/\s/, 'T')+'Z').getTime();

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
<script>
    function changeKind(){
        var e = document.getElementById("kind");
        var size = document.getElementById("size");
        var kind_id = e.options[e.selectedIndex].value;
        var size_id = size.options[size.selectedIndex].value;
        if (kind_id != '') {
            document.getElementById('kind').value=kind_id;
            if (size_id == '') {
                $.ajax({
                    url: "/ajax/kind",
                    type: "post",
                    data: {
                        kind_id : kind_id
                    },
                    success: function (data) {
                        var text = '<option value=""> Chọn một tùy chọn </option>';
                        for (var key in data) {
                            if (data.hasOwnProperty(key)) {
                                var text = text + '<option value="' + key + '">' + data[key] + '</option>';
                            }
                        }
                        $('#size').html(text);
                    },
                    error: function(jqXHR, textStatus, errorThrown) {
                       console.log(textStatus, errorThrown);
                    }
                });
            } else {
                $.ajax({
                    url: "/ajax/get_product_by_kind_size",
                    type: "post",
                    data: {
                        kind_id : kind_id,
                        size_id: size_id
                    },
                    success: function (data) {
                        console.log(data);
                        var price_del = data['price_del'];
                        var price = numeral(data['price']).format('0,0');
                        var price = price + ' VNĐ';
                        var product_name = data['product_name'];
                        var price_del = numeral(price_del).format('0,0');

                        $('#pri-num').html(price_del);
                        $('#promotion_price').html(price);
                        $('#product_name').html(product_name);

                        $('#remove_product').remove();
                        var text = '<input id="price" type="hidden" name="price" value="'+data['price']+'">' + '<input id="color" type="hidden" name="product_id" value="'+data['product_id']+'">'+
                        '<input type="hidden" id="price_first" name="price_first" value="'+data['price']+'">'
                        ;
                        $('#input-hidden').html(text);
                        var image_top_url = '<img src="'+data['image_url']+'" id="sizeimg"/>';

                        $('#image_top').html(image_top_url);
                    },
                    error: function(jqXHR, textStatus, errorThrown) {
                       console.log(textStatus, errorThrown);
                    }
                });
            }
        }
        
    }

    function changeSize(){
        var e = document.getElementById("kind");
        var size = document.getElementById("size");
        var kind_id = e.options[e.selectedIndex].value;
        var size_id = size.options[size.selectedIndex].value;
        if (size_id != '') {
            document.getElementById('size').value=size_id;
            if (kind_id == '') {
                $.ajax({
                    url: "/ajax/size",
                    type: "post",
                    data: {
                        size_id : size_id
                    },
                    success: function (data) {
                        var text = '<option value=""> Chọn một tùy chọn </option>';
                        for (var key in data) {
                            if (data.hasOwnProperty(key)) {
                                var text = text + '<option value="' + key + '">' + data[key] + '</option>';
                            }
                        }
                        $('#kind').html(text);
                    },
                    error: function(jqXHR, textStatus, errorThrown) {
                       console.log(textStatus, errorThrown);
                    }
                });
            } else {
                $.ajax({
                    url: "/ajax/get_product_by_kind_size",
                    type: "post",
                    data: {
                        kind_id : kind_id,
                        size_id: size_id
                    },
                    success: function (data) {
                        var price_del = data['price_del'];
                        var price = numeral(data['price']).format('0,0');
                        var price = price + ' VNĐ';
                        var product_name = data['product_name'];
                        var price_del = numeral(price_del).format('0,0');

                        $('#product_name').html(product_name);
                        $('#pri-num').html(price_del);
                        $('#promotion_price').html(price);

                        $('#remove_product').remove();
                        var text = '<input id="price" type="hidden" name="price" value="'+data['price']+'">' + '<input id="color" type="hidden" name="product_id" value="'+data['product_id']+'">'+
                        '<input type="hidden" id="price_first" name="price_first" value="'+data['price']+'">'
                        ;
                        $('#input-hidden').html(text);

                        var image_top_url = '<img src="'+data['image_url']+'" id="sizeimg"/>';

                        $('#image_top').html(image_top_url);
                    },
                    error: function(jqXHR, textStatus, errorThrown) {
                       console.log(textStatus, errorThrown);
                    }
                });
            }
        }
        

        
    }

</script>