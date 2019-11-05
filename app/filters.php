<?php

/*
|--------------------------------------------------------------------------
| Application & Route Filters
|--------------------------------------------------------------------------
|
| Below you will find the "before" and "after" events for the application
| which may be used to do any work before or after a request into your
| application. Here you may also register your custom route filters.
|
*/

App::before(function($request)
{
    //
});


App::after(function($request, $response)
{
    //
});

/*
|--------------------------------------------------------------------------
| Authentication Filters
|--------------------------------------------------------------------------
|
| The following filters are used to verify that the user of the current
| session is logged into this application. The "basic" filter easily
| integrates HTTP Basic authentication for quick, simple checking.
|
*/

Route::filter('auth', function()
{
    if (Auth::guest())
    {
        if (Request::ajax())
        {
            return Response::make('Unauthorized', 401);
        }
        else
        {
            return Redirect::guest('login');
        }
    }
});
Route::filter('admin', function()
{
    // dd(Auth::admin()->guest());
    if (Auth::admin()->guest()){
        return Redirect::route('admin.login');
    }
    // if( !$user ){
    //     return Redirect::action('AdminController@login');
    // }
});
// Route::filter('admin', function()
// {
//     $user = currentUser();
//     if( !$user ){
//         return Redirect::action('AdminController@login');
//     }
//     // dd($user);
//     if( !hasRole('admin', $user) ){
//         $route = Route::getCurrentRoute()->getActionName();
//         $checkPermission = false;
//         foreach (getAllPermissions() as $permission => $value) {
//             if( userAccess($permission, $user) && in_array($route, $value['accept']) ){
//                 $checkPermission = $value['accept'];
//                 if( !empty($value['callback_function']) && function_exists($value['callback_function']) ){
//                     call_user_func($value['callback_function']);
//                 }
//                 break;
//             }
//         }
//         if( !$checkPermission ){
//             App::abort(403);
//         }
//     } 

// });

Route::filter('user', function()
{
    $user = currentUser();
    if( !$user ){
        return Redirect::action('AdminController@login');
    }
    // $admin = Auth::admin()->get();
 //    if ($admin->role_id != ADMIN) {
 //     $route = Route::getCurrentRoute()->getActionName();
 //     $check = checkUrlPermission($route);
 //     if (!$check) {
 //         return View::make('403');
 //     }
 //    }
});


// Route::filter('partner', function()
// {
//  if (Auth::partner()->guest()){
//      return Redirect::route('partner.login');
//  }
// });
Route::filter('auth.basic', function()
{
    return Auth::basic();
});

/*
|--------------------------------------------------------------------------
| Guest Filter
|--------------------------------------------------------------------------
|
| The "guest" filter is the counterpart of the authentication filters as
| it simply checks that the current user is not logged in. A redirect
| response will be issued if they are, which you may freely change.
|
*/

Route::filter('guest', function()
{
    if (Auth::check()) return Redirect::to('/');
});

/*
|--------------------------------------------------------------------------
| CSRF Protection Filter
|--------------------------------------------------------------------------
|
| The CSRF filter is responsible for protecting your application against
| cross-site request forgery attacks. If this special token in a user
| session does not match the one given in this request, we'll bail.
|
*/

Route::filter('csrf', function()
{
    if (Session::token() != Input::get('_token'))
    {
        throw new Illuminate\Session\TokenMismatchException;
    }
});
