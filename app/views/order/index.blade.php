@extends('admin.layout.default')

@section('title')
    {{ $title='Quản lý order' }}
@stop
@section('content')
@include('order.index_script')
<div class="margin-bottom">
    @include('order.filter')
</div>
	<div class="scrollme">        
<table class="table table-bordered table-responsive table-striped table-bordered table-sm" cellspacing="0"
  width="100%" style="border:10px solid #ddd !important;">
        <thead>
	<tr>
            <th>STT</th>
            <th>Product + color</th>
            <!-- <th>Tổng tiền chưa discount</th> -->
            <th>Tổng tiền nhận</th>
            <th>Tỉnh/thành</th>
            <th>Họ tên</th>
            <!-- <th>Email</th> -->
            <th>Phone</th>
            <th>Address</th>
            <th>Comment</th>
            <th>Date</th>
            <th>Thao tác</th>
        </tr>
	</thead>
	<tbody>
        @foreach($data as $key => $order)
        <tr>
            <td>#{{ $key + 1 + ($data->getPerPage() * ($data->getCurrentPage() -1)) }}</td>
            <td>
                {{wordwrap(ProductOrder::getNameProductByOrder($order->id), 30, "<br>\n") }}
            </td>
            <!-- <td>
                {{ Order::getValueByOrderId($order->id,'total_price') }}
            </td> -->

            <td>
                {{ Order::getValueByOrderId($order->id,'money_pay') }}

            </td>
            <td>
                {{ Order::getValueByOrderId($order->id,'city') }}
            </td>
            <td>
                {{ Order::getValueByOrderId($order->id,'receiver_name') }}
            </td>
          <!--   <td>
                {{ Order::getValueByOrderId($order->id,'email') }}
            </td> -->
            
            <td>
                {{ Order::getValueByOrderId($order->id,'phone_name') }}
            </td>
            <td>
                {{ wordwrap(Order::getValueByOrderId($order->id,'address'), 30, "<br>\n") }}
            </td>
            <td>
                {{ Order::getValueByOrderId($order->id,'comment') }}
            </td>
            <td>
                {{ Order::getValueByOrderId($order->id,'created_at') }}
            </td>

            <td>
                {{ Form::open(array('method'=>'DELETE', 'action' => array('AdminOrderController@destroy', $order->id), 'style' => 'display: inline-block;')) }}
                    <button class="btn btn-danger" title="xóa" onclick="return confirm('Bạn có chắc chắn muốn xóa?');"><i class="glyphicon glyphicon-trash"></i></button>
                {{ Form::close() }}
            </td>
            
        </tr>
        @endforeach
	</tbody>
    </table>
</div>
    <div class="clear clearfix"></div>
    {{ $data->appends(Request::except('page'))->links() }}
@stop
