<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PlanAttachment extends Model
{
    //
    protected $fillable=['name','plan_id','document'];
}
