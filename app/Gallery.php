<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Gallery extends Model
{
    //
    protected $fillable = [
        'name',
        'photo', //the path you uploaded the image
      ];
}
