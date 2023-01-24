<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class SchemeAttachment extends Model
{
    protected $fillable=['name','scheme_id','document'];
  
}
