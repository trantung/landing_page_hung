<?php

class SizeController extends AdminController {
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
        $data = Size::paginate(20);
        return View::make('size.index')->with(compact('data'));
    }


    /**
     * Show the form for creating a new resource.
     *
     * @return Response
     */
    public function create()
    {
        return View::make('size.create');
    }


    /**
     * Store a newly created resource in storage.
     *
     * @return Response
     */
    public function store()
    {
        $input = Input::all();
        $input['image_url'] = CommonUpload::uploadImage(UPLOADPRODUCT.'/size/', 'image_url');
        Size::create($input);
        return Redirect::action('SizeController@index');

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
        $size = Size::find($id);
        return View::make('size.edit')->with(compact('size'));
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
        $size = Size::find($id);
        $size->update($input);
        return Redirect::action('SizeController@index');
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
        $image = Size::destroy($id);
        return Redirect::action('SizeController@index')->withMessage('<i class="fa fa-check-square-o fa-lg"></i> Xóa thành công!');

    }

}
