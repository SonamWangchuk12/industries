<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Plan extends Model
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
        return $this->hasMany(PlanAttachment::class, 'plan_id', 'id');
    }
}
