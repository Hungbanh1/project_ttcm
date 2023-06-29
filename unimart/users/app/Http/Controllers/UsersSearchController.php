<?php

namespace App\Http\Controllers;
// use App\Http\Controllers\Str;

use App\Mix_products;
use App\Products;
use App\Posts;
use Illuminate\Http\Request;
use Illuminate\Support\Str;




class UsersSearchController extends Controller
{
    public function searchajax(Request $request , $suffitx = 'VNĐ')
    {

        $keyword = '';
        // return "keyword ajax:$keyword";
        
        // return "keyword ajax:$keyword";
        if ($request->input('keyword')) {
            $keyword = $request->input('keyword');
        }
        $products = Products::where('product_name', 'LIKE', "%$keyword%")->get();
        // $products = Posts::where('page_title', 'LIKE', "%$keyword%")->get();

        
        // }
        $data = [
            'product' => $products,
        ];
      
        return $data;

        // return view('users.search.searchajax' , compact('data'));

    }
    function search(Request $request){
        // return "ok";
        $keyword = 'a';
        // return "keyword ajax:$keyword";

        if ($request->input('keyword')) {
            $keyword = $request->input('keyword');
        }
        $products = Products::where('product_name', 'LIKE', "%$keyword%")->get();
        // $products = Posts::where('page_title', 'LIKE', "%$keyword%")->get();

        return view('users.search.search', compact(('products')));
    }
}
