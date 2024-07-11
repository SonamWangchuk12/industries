<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ImportantLink extends Model
{
    //
    protected $fillable = [
        'name',
        'link'
      ];
}
