<?php

class OrderController extends Controller {

	/**
	 * Setup the layout used by the controller.
	 *
	 * @return void
	 */
	public function index()
	{
		$config = AdminConfig::find(1);
		$slides = Slide::all();
		$comments = Comment::all();
		$commentOrders = CommentOrder::all();
		$productFirst = Product::first();
		$products = Product::all();
        if ($config) {
            return View::make('hung.index')->with(compact('config', 'slides','comments','commentOrders', 'productFirst', 'products'));
        }
        $config = new AdminConfig;
        return View::make('hung.index')->with(compact('config'));
	}

	public function create()
	{

	}
	public function store()
	{
		$input = Input::all();
		if (!isset($input['product_id'])) {
			$productId = $input['product_id_first'];
		} else {
			$productId = $input['product_id'];
		}
		$product = Product::find($productId);
		$sizeKind = SizeKind::where('product_id', $productId)->first();
		$sizeName = null;
		if ($sizeKind) {
			$sizeId = $sizeKind->size_id;
			$sizeName = Size::find($sizeId)->name;
		}
		$number = $input['number'];
		$discount = Discount::find(1);
		$config = AdminConfig::find(1);
		return View::make('hung.dat-hang')->with(compact('product','number', 'discount','config', 'sizeName'));
	}
	public function order()
	{
		$config = AdminConfig::find(1);
		$input = Input::all();
		$product_id = $input['product_id'];
		$number = $input['number'];
		$config = AdminConfig::find(1);
		$numberConfig = $config->text_promotion_number;
		$config->update(['text_promotion_number' => $numberConfig - $number]);
		// //luu order
		$order = [];
		$order['money_pay'] = $input['money_pay'];
		$order['status'] = 1;
		$order['receiver_name'] = 'trantunghn196@gmail.com';
		$order['phone_name'] = $input['phone_name'];
		$order['email'] = 'trantunghn196@gmail.com';
		$order['city'] = 'Hà Nội';
		$order['address'] = $input['address'];
		$order['comment'] = $input['comment'];
		$order['total_price'] = $input['total_price'];
		$orderId = Order::create($order)->id;
		//luu vao product_order
		$data = [];
		$product = Product::find($product_id);
		$productName = $product->text;
		$productCode = $product->code;
		$data['product_id'] = $product_id;
		$data['order_id'] = $orderId;
		$data['quantity'] = $input['number'];
		$data['price'] = $product->price;
		$data['total_price'] = $input['total_price'];
		ProductOrder::create($data);

		$money = $input['money_pay'];
		//gui mail
		$detail = [
            'orderCode' => $orderId,
        ];
		return View::make('hung.thong-bao')->with(compact('money', 'orderId', 'config','order', 'data', 'productName','productCode'));
	}
	public function success()
	{
		// $money
		return View::make('hung.thong-bao')->with(compact('money'));
	}
}
