<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('absensi_details', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('id_absensi');
            $table->string('nip');
            $table->string('nama');
            $table->string('jabatan');
            $table->text('ttd');
            $table->timestamps();

            $table->foreign('id_absensi')->references('id')->on('absensis')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('absensi_details');
    }
};
