<?php


namespace App\Http;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;


class Location
{
    public static function locationGet($ip)
    {
        $url = env('API_LOCATION').$ip.'?access_key='.env("API_LOCATION_KEY");
        $response = Http::withHeaders(['Content-Type' => 'application/json'])
            ->get($url);
        $response = json_decode($response->body(), true);

        return $response;
    }
}
