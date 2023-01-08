<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class About extends Model
{
    //
    protected $fillable = [
        'name',
        'content',
        'photo', //the path you uploaded the image
      ];
}
