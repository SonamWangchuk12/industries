<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateOfflineServiceAttachmentsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('offline_service_attachments', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('offservice_id')->unsigned()->index()->nullable();
            $table->string('name',200);
            $table->string('document',141);
            $table->foreign('offservice_id')->references('id')->on('offline_services')->onDelete('cascade');
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
        Schema::dropIfExists('offline_service_attachments');
    }
}
