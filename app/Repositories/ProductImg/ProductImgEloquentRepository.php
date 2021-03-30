<?php

namespace App\Repositories\ProductImg;

use App\Models\ProductImg;
use App\Repositories\Eloquent\EloquentRepository;

class ProductImgEloquentRepository extends EloquentRepository implements ProductImgRepositoryInterface
{
    /**
     * @return mixed
     */
    public function getModel()
    {
        return ProductImg::class;
    }
}
