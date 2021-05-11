<?php

use Illuminate\Database\Seeder;

class SettingMenuSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        
        DB::table('master_position')->insert([
            [
                'MENU_NAME'=>'New_Customer_List',
                'LEVEL_TMR'=>1,
                'LEVEL_SPV'=>0,
                'LEVEL_QA'=>0,
                'LEVEL_ADMIN'=>0,
                'LEVEL_SPVQA'=>0,
                'created_at' => date("Y-m-d H:i:s"),
                'updated_at' => date("Y-m-d H:i:s"),
            ],
            [
                'MENU_NAME'=>'Schedule_Customer_List',
                'LEVEL_TMR'=>1,
                'LEVEL_SPV'=>0,
                'LEVEL_QA'=>0,
                'LEVEL_ADMIN'=>0,
                'LEVEL_SPVQA'=>0,
                'created_at' => date("Y-m-d H:i:s"),
                'updated_at' => date("Y-m-d H:i:s"),
            ],
            [
                'MENU_NAME'=>'Other_Customer_List',
                'LEVEL_TMR'=>1,
                'LEVEL_SPV'=>0,
                'LEVEL_QA'=>0,
                'LEVEL_ADMIN'=>0,
                'LEVEL_SPVQA'=>0,
                'created_at' => date("Y-m-d H:i:s"),
                'updated_at' => date("Y-m-d H:i:s"),
            ],
            [
                'MENU_NAME'=>'QA_Customer_List',
                'LEVEL_TMR'=>0,
                'LEVEL_SPV'=>1,
                'LEVEL_QA'=>1,
                'LEVEL_ADMIN'=>1,
                'LEVEL_SPVQA'=>1,
                'created_at' => date("Y-m-d H:i:s"),
                'updated_at' => date("Y-m-d H:i:s"),
            ],
            [
                'MENU_NAME'=>'Recording_CALL_LOG',
                'LEVEL_TMR'=>0,
                'LEVEL_SPV'=>1,
                'LEVEL_QA'=>1,
                'LEVEL_ADMIN'=>1,
                'LEVEL_SPVQA'=>1,
                'created_at' => date("Y-m-d H:i:s"),
                'updated_at' => date("Y-m-d H:i:s"),
            ],
            [
                'MENU_NAME'=>'Report',
                'LEVEL_TMR'=>1,
                'LEVEL_SPV'=>0,
                'LEVEL_QA'=>0,
                'LEVEL_ADMIN'=>0,
                'LEVEL_SPVQA'=>0,
                'created_at' => date("Y-m-d H:i:s"),
                'updated_at' => date("Y-m-d H:i:s"),
            ],
        ]);
    }
}
