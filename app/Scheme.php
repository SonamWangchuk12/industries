<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Scheme extends Model
{
    protected $fillable=['name','description'];
      /**
     * Get all of the attachments for the SchemeAttachment
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function attachments(): HasMany
    {
        return $this->hasMany(SchemeAttachment::class, 'scheme_id', 'id');
    }
}
