<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateActAttachmentsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('act_attachments', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('act_id')->unsigned()->index()->nullable();
            $table->string('name',200);
            $table->string('document',141);
            $table->foreign('act_id')->references('id')->on('acts')->onDelete('cascade');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('act_attachments');
    }
}
