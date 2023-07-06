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
        Schema::create('ruangans', function (Blueprint $table) {
            $table->unsignedBigInteger('id', true);
            $table->string('nama_ruangan');
            $table->string('kapasitas');
            $table->string('lokasi');
            $table->string('status')->nullable();
            $table->timestamps();
        });

        // Add primary key
        Schema::table('ruangans', function (Blueprint $table) {
            $table->primary('id');
        });

        // Set id column to auto-increment
        Schema::table('ruangans', function (Blueprint $table) {
            $table->unsignedBigInteger('id')->autoIncrement()->change();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('ruangans');
    }
};
