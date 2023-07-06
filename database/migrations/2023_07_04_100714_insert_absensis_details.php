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
    
        if (!DB::table('absensi_details')->where('id', 1)->exists()) {
            DB::table('absensi_details')->insert([
                'id'         => 1,
                'id_absensi' => 1,
                'nip'        => '123456789',
                'nama'       => 'John Doe',
                'jabatan'    => 'Manager',
                'ttd'        => 'signature1',
                'created_at' => now(),
                'updated_at' => now(),
            ]);
        }

        if (!DB::table('absensi_details')->where('id', 2)->exists()) {
            DB::table('absensi_details')->insert([
                'id'         => 2,
                'id_absensi' => 1,
                'nip'        => '987654321',
                'nama'       => 'Jane Smith',
                'jabatan'    => 'Supervisor',
                'ttd'        => 'signature2',
                'created_at' => now(),
                'updated_at' => now(),
            ]);
        }
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        DB::table('absensi_details')->where('id', '=', 1)->delete();
    }
};
