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
        DB::table('ruangans')->insert([
            ['id' => 1, 'nama_ruangan' => 'Gedung MST', 'kapasitas' => '100', 'lokasi' => 'Teknik, Politeknik Negeri Semarang', 'status' => null, 'created_at' => '2023-06-12 19:32:16', 'updated_at' => '2023-07-02 14:09:03'],
            ['id' => 2, 'nama_ruangan' => 'Ruang Serba Guna', 'kapasitas' => '500', 'lokasi' => 'Tata Niaga, Politeknik Negeri Semarang', 'status' => null, 'created_at' => '2023-07-02 14:08:12', 'updated_at' => '2023-07-02 14:08:12'],
            ['id' => 3, 'nama_ruangan' => 'Gedung Kerja Sama', 'kapasitas' => '100', 'lokasi' => 'Politeknik Negeri Semarang', 'status' => null, 'created_at' => '2023-07-02 14:09:25', 'updated_at' => '2023-07-02 14:12:03'],
            ['id' => 4, 'nama_ruangan' => 'Lapangan Hitam', 'kapasitas' => '1000', 'lokasi' => 'Teknik, Politeknik Negeri Semarang', 'status' => null, 'created_at' => '2023-07-02 14:09:44', 'updated_at' => '2023-07-02 14:09:44'],
            ['id' => 5, 'nama_ruangan' => 'Lapangan Hijau', 'kapasitas' => '3000', 'lokasi' => 'Politeknik Negeri Semarang', 'status' => null, 'created_at' => '2023-07-02 14:10:03', 'updated_at' => '2023-07-02 14:10:03'],
        ]);
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        DB::table('ruangans')->truncate();
    }
};
