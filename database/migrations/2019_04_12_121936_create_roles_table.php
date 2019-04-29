<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateRolesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('roles', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('name')->unique();
            $table->boolean('can_create_post');
            $table->boolean('can_edit_own_post');
            $table->boolean('can_delete_own_post');
            $table->boolean('can_delete_other_posts');
            $table->boolean('can_write_comment');
            $table->boolean('can_delete_own_comments');
            $table->boolean('can_delete_other_comments');
            $table->boolean('can_delete_users');
            $table->boolean('can_delete_moderators');
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
        Schema::dropIfExists('roles');
    }
}
