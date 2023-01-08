<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class RTI extends Model
{
    //
    protected $fillable = [
        'name',
        'document', //the path you uploaded the image
      ];
}
