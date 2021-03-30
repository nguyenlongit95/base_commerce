<?php

namespace App\Repositories\ProductTags;

use App\Models\ProductTags;
use App\Repositories\Eloquent\EloquentRepository;

class ProductTagsEloquentRepository extends EloquentRepository implements ProductTagsRepositoryInterface
{
    /**
     * @return mixed
     */
    public function getModel()
    {
        return ProductTags::class;
    }
}
