<?php

namespace App\Http\Middleware;

use Closure;

class PreventTraceMethod
{
    public function handle($request, Closure $next)
    {
        if ($request->isMethod('TRACE')) {
            return response()->json(['message' => 'Trace Method not allowed'], 405);
        }

        return $next($request);
    }
}
