<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Company;

class CreateMinistryDetailsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $check = Company::first();
        if(!$check){
            $data = new Company;
            $data->fullname = 'Roshes Constructions Ltd';
            $data->shortname = 'Roshes';
            $data->save();
        }
    }
}
