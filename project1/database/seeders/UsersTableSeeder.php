<?php

namespace Database\Seeders;

use Exception;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $names = [
            'Mohamed',
            'Aya',
            'Fouad',
            'Joe',
            'Rana',
            'Mai'
        ];

        $domains = [
            'gmail',
            'outlook',
            'hotmail'
        ];

        for ($i = 0 ; $i < 10; $i++) {
            $name1 =  $names[mt_rand(0,count($names)-1)];
            $name2 =  $names[mt_rand(0,count($names)-1)];
            try{
                DB::table('users')->insert([
                    'name' => $name1.' '.$name2,
                    'email' => $name1.'@'.$domains[mt_rand(0,count($domains)-1)].'.com',
                    'password' => Hash::make('123')
                ]);
            } catch(Exception $e) {
                $i--;
                continue;
            }
        }
    }
}
