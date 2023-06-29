<?php

namespace App\Http\Middleware;

use Illuminate\Foundation\Http\Middleware\VerifyCsrfToken as Middleware;
use Symfony\Component\HttpFoundation\Cookie;


class VerifyCsrfToken extends Middleware
{
    /**
     * The URIs that should be excluded from CSRF verification.
     *
     * @var array
     */
    protected $except = [
        //
    ];
    protected function addCookieToResponse($request, $response)
    {
        $config = config('session');

        $cookie = new Cookie(
            'XSRF-TOKEN',
            $request->session()->token(),
            $config['lifetime'] * 60,
            $config['path'],
            $config['domain'],
            $config['secure'],
            true // Set the HttpOnly flag to true
        );

        $response->headers->setCookie($cookie);

        return $response;
    }
}
