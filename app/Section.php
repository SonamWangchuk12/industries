<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Section extends Model
{
    protected $fillable=['name','description'];
      /**
     * Get all of the attachments for the SectionAttachment
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function attachments(): HasMany
    {
        return $this->hasMany(SectionAttachment::class, 'section_id', 'id');
    }
}
