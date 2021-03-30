<?php

namespace App\Repositories\ProductAttitude;

use App\Models\ProductAttitude;
use App\Repositories\Eloquent\EloquentRepository;

class ProductAttitudeEloquentRepository extends EloquentRepository implements ProductAttitudeRepositoryInterface
{
    /**
     * @return mixed
     */
    public function getModel()
    {
        return ProductAttitude::class;
    }
}
