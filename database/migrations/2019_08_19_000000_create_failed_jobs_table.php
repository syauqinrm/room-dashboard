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
        Schema::create('failed_jobs', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('uuid');
            $table->text('connection');
            $table->text('queue');
            $table->longText('payload');
            $table->longText('exception');
            $table->timestamp('failed_at')->default(\DB::raw('CURRENT_TIMESTAMP'));

            $table->index('failed_at');
        });

        // Add primary key
        Schema::table('failed_jobs', function (Blueprint $table) {
            $table->primary('id');
        });

        // Add unique key
        Schema::table('failed_jobs', function (Blueprint $table) {
            $table->unique('uuid', 'failed_jobs_uuid_unique');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('failed_jobs');
    }
};
