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
        DB::table('absensis')->insert([
            [
                'id' => 2,
                'id_user' => 1,
                'agenda' => 'Rapat Koordinasi',
                'nama_ruangan' => 'Gedung MST',
                'tanggal' => '2023-06-13',
                'jam_mulai' => '12:00',
                'jam_selesai' => '14:00',
                'created_at' => '2023-07-02 14:15:14',
                'updated_at' => '2023-07-02 14:15:14',
            ],
        ]);
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        DB::table('absensis')->where('id', 2)->delete();
    }
};
