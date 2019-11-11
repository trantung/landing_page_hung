<div class="box alert">
	{{ Form::open(['action' => ('AdminOrderController@search'), 'method' => 'GET', 'class' => 'filter-document-form']) }}
		<div class="input-group inline-block" style="max-width: 150px">
			<label>Size</label>
			{{  Form::select('size_id', [''=>'Default'] + Size::lists('name', 'id'), Input::get('size_id'), array('class' => 'form-control' )) }}
		</div>
		<div class="input-group inline-block" style="max-width: 150px">
			<label>Kind</label>
			{{  Form::select('kind_id', [''=>'Default'] + AdminKind::lists('name', 'id'), Input::get('kind_id'), array('class' => 'form-control' )) }}
		</div>

		<div class="input-group inline-block" style="vertical-align: bottom;">
			<button type="submit" class="btn btn-primary" title="Tìm kiếm"><i class="glyphicon glyphicon-search"></i></button>
		</div>
	{{ Form::close() }}
</div>