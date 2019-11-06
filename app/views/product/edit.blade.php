@extends('admin.layout.default')

@section('title')
{{ $title='Sửa Product' }}
@stop
@section('content')


<div class="row">
    <div class="col-xs-12">
        <div class="box box-primary">
            {{ Form::open(array('action' => array('ProductController@update', $product->id), 'method' => "PUT", 'files' => true)) }}
                <div class="box-body">
                    <div class="row">
                        <div class="col-sm-6">
                            <label>Name</label>
                            {{  Form::text('text', $product->text, array('class' => 'form-control' )) }}
                        </div>
                    </div> 
                    <div class="row">
                        <div class="col-sm-6">
                            <label>Size(kích thước)</label>
                            {{  Form::select('size', Size::lists('name', 'id'), $product->size, array('class' => 'form-control' )) }}
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6">
                            <label>Kind(hình thức)</label>
                            {{  Form::select('kind', AdminKind::lists('name', 'id'), $product->kind, array('class' => 'form-control' )) }}
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6">
                            <label>Price</label>
                            {{  Form::text('price', $product->price, array('class' => 'form-control' )) }}
                        </div>
                    </div> 

                    <div class="row">
                        <div class="col-sm-6">
                            <label>Ảnh</label>
                            <input type="file" name="image_url" class="form-control"><br>
                            <img src="{{ !empty($product->image_url) ? url($product->image_url) : NO_IMG }}" width="150px" height="auto"  />
                        </div>
                    </div> 

                </div>

                <div class="box-footer">
                    <button type="submit" class="btn btn-primary">Lưu lại</button>
                </div>
            {{ Form::close() }}
        </div>
        <!-- /.box -->
    </div>
</div>
@stop