<?php

class ProductController extends AdminController {
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
        $data = Product::paginate(20);
        return View::make('product.index')->with(compact('data'));
    }


    /**
     * Show the form for creating a new resource.
     *
     * @return Response
     */
    public function create()
    {
        return View::make('product.create');
    }


    /**
     * Store a newly created resource in storage.
     *
     * @return Response
     */
    public function store()
    {
        $input = Input::all();
        $input['image_url'] = CommonUpload::uploadImage(UPLOADPRODUCT, 'image_url');
        $productId = Product::create($input)->id;
        SizeKind::create([
            'product_id' => $productId,
            'size_id' => $input['size'],
            'kind_id' => $input['kind'],
            'price' => $input['price'],
        ]);
        return Redirect::action('ProductController@index');

    }


    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return Response
     */
    public function show($id)
    {
        //
    }


    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return Response
     */
    public function edit($id)
    {
        $product = Product::find($id);
        return View::make('product.edit')->with(compact('product'));
    }


    /**
     * Update the specified resource in storage.
     *
     * @param  int  $id
     * @return Response
     */
    public function update($id)
    {
        $input = Input::all();
        // dd($input);
        $product = Product::find($id);
        $input['image_url'] = CommonUpload::uploadImage(UPLOADPRODUCT, 'image_url', $product->image_url);
        $product->update($input);
        return Redirect::action('ProductController@index');
    }


    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return Response
     */
    public function destroy($id)
    {
        //
        $image = Product::destroy($id);
        return Redirect::action('ProductController@index')->withMessage('<i class="fa fa-check-square-o fa-lg"></i> Xóa thành công!');

    }
    public function ajax()
    {
        // $input = Input::all();
        // $productId = $input['product_id'];
        // $product = Product::find($productId);
        // $output = [
        //     'price' => $product->price,
        // ];
        // return Response::json($output);
    }

}
