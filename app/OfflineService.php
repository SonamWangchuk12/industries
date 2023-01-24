<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class OfflineService extends Model
{
    //
    protected $fillable=['name','description'];
    /**
    * Get all of the attachments for the SchemeAttachment
    *
    * @return \Illuminate\Database\Eloquent\Relations\HasMany
    */
   public function attachments(): HasMany
   {
       return $this->hasMany(OnlineServiceAttachment::class, 'offservice_id', 'id');
   }
}
