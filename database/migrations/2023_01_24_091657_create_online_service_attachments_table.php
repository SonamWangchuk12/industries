<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateOnlineServiceAttachmentsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('online_service_attachments', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('onservice_id')->unsigned()->index()->nullable();
            $table->string('name',200);
            $table->string('document',141);
            $table->foreign('onservice_id')->references('id')->on('online_services')->onDelete('cascade');
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
        Schema::dropIfExists('online_service_attachments');
    }
}
