<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class GovData extends Model
{
    //
    protected $fillable = [
        'name',
        'designation',
        'photo', //the path you uploaded the image
      ];
}
