<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Product;
use App\Support\ResponseQRCode;
use Carbon\Carbon;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function show(Product $product)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function edit(Product $product)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Product $product)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function destroy(Product $product)
    {
        //
    }

    /**
     * Function controller render default qr-code
     *
     * @param Request $request
     * @return string
     * @throws \Illuminate\Contracts\Container\BindingResolutionException
     */
    public function defaultQRCode(Request $request)
    {
        $key = Carbon::now()->format('Y-m-d h:i:s');

        $renderCode = app()->make(ResponseQRCode::class)->defaultQRCode($key, md5('lorem'));
        // TODO insert code to Database by render utf-8
//        $codeAsUTF8 = app()->make(ResponseQRCode::class)->encodedAsUTF8($key, md5('lorem'));

//        $encodeIsColor = app()->make(ResponseQRCode::class)->encodeIsColored($key, md5('lorem'), 'white');

//        $endCodeWithImage = app()->make(ResponseQRCode::class)->encodeWithImage($key, md5('lorem'), asset('image/logoDep.jpg'));

//        $endCodeWithSMS = app()->make(ResponseQRCode::class)->encodeWithSMS($key, md5('lorem'), '0393803548', 'Hello world');

//        $endCodeWithEmail = app()->make(ResponseQRCode::class)->encodeWithSMS('nguyenlongit95@gmail.com', 'Demo Test', 'Hello world!');

        return $renderCode;
    }
}
