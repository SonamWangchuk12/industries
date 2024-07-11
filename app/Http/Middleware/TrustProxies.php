<?php

namespace App\Http\Middleware;

use Fideloper\Proxy\TrustProxies as Middleware;
use Illuminate\Http\Request;
use Closure;
class TrustProxies extends Middleware
{
    /**
     * The trusted proxies for this application.
     *
     * @var array|string|null
     */
    protected $proxies;

    /**
     * The headers that should be used to detect proxies.
     *
     * @var int
     */

    protected $headers = Request::HEADER_X_FORWARDED_ALL;
    public function handle(Request $request, Closure $next)
    {
        $trustedHosts = [config('app.url'),'127.0.0.1','164.100.126.191'];

        if (!in_array($request->getHost(), $trustedHosts)) {
            return response('Invalid Host header', 400);
        }

        return $next($request);
    }
}
