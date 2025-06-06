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
    Schema::create('trivia_questions', function (Blueprint $table) {
        $table->id();
        $table->string('question');
        $table->string('option_a');
        $table->string('option_b');
        $table->string('option_c');
        $table->string('correct_option');
        $table->timestamps();
    });
}


    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('trivia_questions');
    }
};
