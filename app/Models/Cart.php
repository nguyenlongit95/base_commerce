<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Cart extends Model
{
    use HasFactory;

    protected $table = 'cart';

    protected $fillable = [
        'code',
        'qa_code',
        'user_id',
        'amount',
        'status',
        'address',
    ];

    /**
     * Collect 1-n to cart detail table
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function cartDetail()
    {
        return $this->hasMany('App\Models\CartDetail', 'cart_id', 'id');
    }
}
