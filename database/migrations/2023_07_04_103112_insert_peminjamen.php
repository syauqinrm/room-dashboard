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
        DB::table('peminjamen')->insert([
            ['id' => 1, 'id_user' => 1, 'id_ruangan' => 1, 'tgl_booking' => '2023-06-13', 'jam_mulai' => '12:00', 'jam_selesai' => '14:00', 'jumlah_peserta' => 100, 'agenda' => 'Rapat Koordinasi', 'status' => 'Diverifikasi', 'status_approv1' => 'Disetujui', 'status_approv2' => 'Disetujui', 'created_at' => '2023-06-12 20:07:07', 'updated_at' => '2023-06-12 20:13:35'],
            ['id' => 2, 'id_user' => 1, 'id_ruangan' => 2, 'tgl_booking' => '2023-06-24', 'jam_mulai' => '13:00', 'jam_selesai' => '22:00', 'jumlah_peserta' => 350, 'agenda' => 'Kongres Mahasiswa', 'status' => 'Diverifikasi', 'status_approv1' => 'Disetujui', 'status_approv2' => 'Disetujui', 'created_at' => '2023-07-03 07:54:23', 'updated_at' => '2023-07-03 07:56:40'],
        ]);
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        DB::table('peminjamen')->whereIn('id', [1, 2])->delete();
    }
};
