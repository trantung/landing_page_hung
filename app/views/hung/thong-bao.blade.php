
@include('hung.header')


<div class="layui-container">

  <div class="explain">
    <div class="imgbox"> <span>Đặt hàng thành công </span> </div>
    <img src="{{url('images/hung/images/thank-you-mobile.jpg')}}" alt="cảm nhận khách hàng" />
    <h3 class="text-center text-transform: uppercase;"> Cảm ơn bạn đã mua hàng tại shop</h3>
    <p id="order_tips">Đơn hàng của bạn đang được chúng tôi sử lý<br> Chúng tôi sẽ goi điện cho bạn khi đơn hàng được xác minh xong</p>
    <h3> CHÚC BẠN MỘT NGÀY TỐT LÀNH</h3>
  </div>

</div>

<div class="timetips layui-row">
    <ul>
        <li style="text-align: center; background: #FF5722; width:100%; color: #fff; text-transform: uppercase;">
          <a href="{{url('/')}}"> Quay lại trang chủ</a>
        </li>
    </ul>
</div>
<script type="text/javascript">
// name    Bắt buộc    Tên khách hàng
// telephone    Bắt buộc    Điện thoại khách
// name_receiver    Bắt buộc    Tên người nhận hàng (có thể để giống tên khách)
// invoicestatus    Bắt buộc    Trạng thái đơn hàng, mặc định AutoCreated
        // subtotal Bắt buộc    Tiền hàng, mặc định : 0
// total    Bắt buộc    Tổng tiền hàng + phụ thu - giảm trừ (nếu có) : mặc định :0
//         listProduct  Bắt buộc    Mảng các giá trị về sản phẩm trong đơn hàng
// price    Bắt buộc    Giá sản phẩm
// amount   Bắt buộc    Số lượng bán
// productName  Bắt buộc    Tên sản phẩm
// productcode  Bắt buộc\

var name = "<?php echo $order['receiver_name']; ?>";
var telephone = "<?php echo $order['phone_name']; ?>";
var city = "<?php echo $order['city']; ?>";
var address = "<?php echo $order['address']; ?>";
var name_receiver = "<?php echo $order['receiver_name']; ?>";
var comment = "<?php echo $order['comment']; ?>";
var subtotal = "<?php echo $order['total_price']; ?>";
var total = "<?php echo $order['money_pay']; ?>";
var price = "<?php echo $data['price']; ?>";
var amount = "<?php echo $data['quantity']; ?>";
var productName = "<?php echo $productName; ?>";
var productcode = "<?php echo $productCode; ?>";

var dataVin = ' [ {\n        \"name\": \"' +name +
    '\",\n        \"telephone\": \"'+telephone+
    '\",\n        \"name_receiver\": \"'+name_receiver+
    '\",\n        \"invoicestatus\": \"AutoCreated\",\n    \"city\": \"'+city+'\",\n    \"district\": \"\",\n        \"address\": \"'+address+
    '\",\n        \"note\": \"'+comment+'\",\n        \"hinhthucvc\": \"Chuyenthuong\",\n        \"discount_percent\": \"0.000\",\n        \"discount_amount\": \"0.000\",\n        \"s_h_amount\": \"0.000\",\n        \"ghichu1\": \"\",\n        \"ghichu2\": \"\",\n        \"notevanchuyen\": \"\",\n        \"giamgia\": \"0\",\n        \"phuthu\": \"0\",\n        \"phivanchuyen\": \"0\",\n        \"adjustment\": \"0.000\",\n        \"taxtype\": \"individual\",\n        \"deposits\": 0,\n        \"subtotal\": '+subtotal+
    ',\n        \"taxtotal_invoice\": \"0.000\",\n        \"total\": '+total+
    ',\n        \"accountid\": 0,\n        \"list_pageitem\": \"289582808317941\",\n        \"listProduct\": [\n            {\n                \"price\": \"'+price+'\",\n                \"amount\": \"'+amount+
    '\",\n                \"productName\": \"'+productName+
    '\",\n                \"productcode\": \"'+productcode+

    '\",\n                \"weight\": \"100\",\n                \"discount_percent_product\": \"0\",\n                \"discount_amount_product\": \"0\",\n                \"tax1\": \"0\",\n                \"qtyinstock\": \"0\"\n            }\n        \n    ]\n}]\n';
    
console.log(dataVin);
console.log('------------');
var settings = {
  "async": true,
  "crossDomain": true,
  "url": "https://new.abit.vn/invoices/createInvoiceFromPartner/2/vinstore/Zxb9yNn2TC5fTXL",
  "method": "POST",
  "headers": {
    "content-type": "application/json",
  },
  "processData": false,
  "data": dataVin
}
console.log(settings.data);
// settings["data"] = dataVin;
console.log('---------');
console.log(settings);
$.ajax(settings).done(function (response) {
  console.log(response);
});
</script>
@include('hung.footer')
