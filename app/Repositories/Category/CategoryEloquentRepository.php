<?php

namespace App\Repositories\Category;

use App\Models\Category;
use App\Repositories\Eloquent\EloquentRepository;

class CategoryEloquentRepository extends EloquentRepository implements CategoryRepositoryInterface
{
    /**
     * @return mixed
     */
    public function getModel()
    {
        return Category::class;
    }
}
