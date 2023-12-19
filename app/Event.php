<?php

namespace App;
use Illuminate\Database\Eloquent\Relations\HasMany;

use Illuminate\Database\Eloquent\Model;

class Event extends Model
{
    //
     protected $fillable=['name','description'];
      /**
     * Get all of the attachments for the SectionAttachment
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function attachments(): HasMany
    {
        return $this->hasMany(EventAttachment::class, 'event_id', 'id');
    }

}
