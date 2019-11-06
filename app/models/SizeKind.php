<?php
use Illuminate\Database\Eloquent\SoftDeletingTrait;

class SizeKind extends Eloquent {

	/**
	 * The database table used by the model.
	 *
	 * @var string
	 */
	protected $table = 'size_kind';

	/**
	 * The attributes excluded from the model's JSON form.
	 *
	 * @var array
	 */
	protected $fillable = array(
		'size_id', 'kind_id', 'price', 'product_id'
	);

}