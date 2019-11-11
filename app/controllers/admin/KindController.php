<?php

class KindController extends AdminController {
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
        $data = AdminKind::paginate(20);
        return View::make('kind.index')->with(compact('data'));
    }


    /**
     * Show the form for creating a new resource.
     *
     * @return Response
     */
    public function create()
    {
        return View::make('kind.create');
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
        AdminKind::create($input);
        return Redirect::action('KindController@index');

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
        $kind = AdminKind::find($id);
        return View::make('kind.edit')->with(compact('kind'));
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
        $kind = AdminKind::find($id);
        $kind->update($input);
        return Redirect::action('KindController@index');
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
        $image = AdminKind::destroy($id);
        return Redirect::action('KindController@index')->withMessage('<i class="fa fa-check-square-o fa-lg"></i> Xóa thành công!');

    }
    public function ajax()
    {
        // $input = Input::all();
        // $kindId = $input['product_id'];
        // $kind = AdminKind::find($kindId);
        // $output = [
        //     'price' => $kind->price,
        // ];
        // return Response::json($output);
    }

}
