<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Category;

class Product extends Model
{
    protected $fillable=[
        'name',
        'image',
        'price',
        'quantity',
        'details',
        'is_active',
    ];
    public function category(){
        return $this->hasOne(Category::class,'id','categories_id');
    }
}
