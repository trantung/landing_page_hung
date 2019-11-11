<?php

class AdminOrderController extends AdminController {
    public function __construct() {
        $this->beforeFilter('admin', array('except'=>array('login','doLogin', 'logout', 'getResetPass', 'postResetPass')));
    }

    /**
     * Display a listing of the resource.
     *
     * @return Response
     */
    public function index()
    {
        $data = Order::paginate(20);
        return View::make('order.index')->with(compact('data'));
    }
    public function destroy($id)
    {
        //
        $image = Order::destroy($id);
        return Redirect::action('AdminOrderController@index')->withMessage('<i class="fa fa-check-square-o fa-lg"></i> Xóa thành công!');
    }

    public function search()
    {
        $input = Input::all();
        if (!isset($input['size_id']) || empty($input['size_id']) ) {
            $sizeId = null;
        } else {
            $sizeId = $input['size_id'];
        }
        if (!isset($input['kind_id']) || empty($input['kind_id']) ) {
            $kindId = null;
        } else {
            $kindId = $input['kind_id'];
        }
        if (!$sizeId && !$kindId) {
            return Redirect::action('AdminOrderController@index');
        }
        $sizeKind = SizeKind::whereNotNull('created');
        if ($sizeId) {
            $sizeKind = $sizeKind->where('size_id', $sizeId);
        }
        if ($kindId) {
            $sizeKind = $sizeKind->where('kind_id', $kindId);
        }
        $productIds = $sizeKind->lists('product_id');
        $orderIds = ProductOrder::whereIn('product_id', $productIds)->lists('order_id');
        $data = Order::whereIn('id', $orderIds)->paginate(20);
        return View::make('order.index')->with(compact('data'));
    }

}
