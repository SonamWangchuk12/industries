<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class OnlineService extends Model
{
    //
    protected $fillable=['name','link'];
    /**
    * Get all of the attachments for the SchemeAttachment
    *
    * @return \Illuminate\Database\Eloquent\Relations\HasMany
    */
   public function attachments(): HasMany
   {
       return $this->hasMany(OnlineServiceAttachment::class, 'onservice_id', 'id');
   }
}
