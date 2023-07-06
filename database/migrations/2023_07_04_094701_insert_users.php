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
        DB::table('users')->insert([
            'nip' => '0000000000000000',
            'username' => 'pegawai',
            'email' => 'pegawai@gmail.com',
            'nama' => 'pegawai',
            'jabatan' => 'pegawai',
            'notelp' => '088888',
            'jenis_kelamin' => 'perempuan',
            'level' => 'Pegawai',
            'password' => Hash::make('123'),
        ]);
        DB::table('users')->insert([
            'nip' => '0000000000000000',
            'username' => 'admin',
            'email' => 'admin@gmail.com',
            'nama' => 'admin',
            'jabatan' => 'admin',
            'notelp' => '088888',
            'jenis_kelamin' => 'perempuan',
            'level' => 'Administrasi Umum',
            'password' => Hash::make('123'),
        ]);
        DB::table('users')->insert([
            'nip' => '0000000000000000',
            'username' => 'kabag',
            'email' => 'kabag@gmail.com',
            'nama' => 'kabag',
            'jabatan' => 'kabag',
            'notelp' => '088888',
            'jenis_kelamin' => 'perempuan',
            'level' => 'Kabag Umum',
            'password' => Hash::make('123'),
        ]);
        DB::table('users')->insert([
            'nip' => '0000000000000000',
            'username' => 'kasubbag',
            'email' => 'kasubbag@gmail.com',
            'nama' => 'kasubbag',
            'jabatan' => 'kasubbag',
            'notelp' => '088888',
            'jenis_kelamin' => 'perempuan',
            'level' => 'Kasubbag Kepegawaian',
            'password' => Hash::make('123'),
        ]);
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        DB::table('users')->truncate();
    }
};
