<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Tender extends Model
{
    //
    protected $fillable = [
        'name',
        'document', //the path you uploaded the image
      ];
}
