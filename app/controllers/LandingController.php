<?php

class LandingController extends Controller {

	/**
	 * Setup the layout used by the controller.
	 *
	 * @return void
	 */
	public function __construct() {
		$config = AdminConfig::find(1);
		$discount = $config->discount_default;
		$comments = Comment::all();
		View::share('discount', $discount);
		View::share('comments', $comments);
    }

	public function index()
	{
		$config = AdminConfig::find(1);
		$slides = Slide::all();
		$topSlide = Slide::where('position', 1)->get();
		$belowSlide = Slide::where('position', 2)->get();
		$comments = Comment::all();
		$commentOrders = CommentOrder::all();
		$productFirst = null;
		if (Product::first()) {
			$productFirst = Product::first();
		}
		$products = Product::all();
        if ($config) {
            return View::make('hung.index')->with(compact('config', 'slides','comments','commentOrders', 'productFirst', 'products', 'topSlide', 'belowSlide'));
        }
        $config = new AdminConfig;
        return View::make('hung.index')->with(compact('config'));
	}

	public function getBuy()
	{
		$config = AdminConfig::find(1);
		$productFirst = null;
		if (Product::first()) {
			$productFirst = Product::first();
		}
		$products = Product::all();
        $discount = $config->discount_default;

        return View::make('hung.product')->with(compact('products', 'config', 'productFirst'));
	}
}
