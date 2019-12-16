<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddMoreConfig extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::table('configs', function(Blueprint $table) {
            $table->string('text_footer_left',255)->after('id')->nullable();
            $table->string('text_footer_right',255)->after('id')->nullable();
            $table->string('text_next_step')->after('id')->nullable();
            $table->string('text_footer_order',255)->after('id')->nullable();
            $table->text('text_order_notify')->after('id')->nullable();
            $table->text('like_link')->after('id')->nullable();
            $table->text('share_link')->after('id')->nullable();
            $table->text('message_to')->after('id')->nullable();
        });
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		//
	}

}
