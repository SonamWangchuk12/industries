<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Minister extends Model
{
    //
    protected $fillable = [
        'name',
        'designation',
        'photo', //the path you uploaded the image
      ];
}
