@extends('admin.layout.default')

@section('title')
{{ $title='Kind' }}
@stop
@section('content')


<div class="row">
    <div class="col-xs-12">
        <div class="box box-primary">
            {{ Form::open(array('action' => array('KindController@store'), 'method' => "POST", 'files' => true)) }}
                <div class="box-body">
                    <div class="row">
                        <div class="col-sm-6">
                            <label>Name</label>
                            {{  Form::text('name', '', array('class' => 'form-control' )) }}
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