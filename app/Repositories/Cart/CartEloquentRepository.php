<?php

namespace App\Repositories\Cart;

use App\Models\Cart;
use App\Repositories\Eloquent\EloquentRepository;

class CartEloquentRepository extends EloquentRepository implements CartRepositoryInterface
{
    /**
     * @return mixed
     */
    public function getModel()
    {
        return Cart::class;
    }
}
