<?php

namespace App\Repositories\Product;

use App\Models\Product;
use App\Repositories\Eloquent\EloquentRepository;

class ProductEloquentRepository extends EloquentRepository implements ProductRepositoryInterface
{
    /**
     * @return mixed
     */
    public function getModel()
    {
        return Product::class;
    }
}
