<?php

namespace App\Providers;

use Illuminate\Support\Facades\Route;
use Illuminate\Foundation\Support\Providers\RouteServiceProvider as ServiceProvider;

class RouteServiceProvider extends ServiceProvider{
    /**
     * This namespace is applied to your controller routes.
     *
     * In addition, it is set as the URL generator's root namespace.
     *
     * @var string
     */
    protected $namespace = 'App\Http\Controllers';

    /**
     * Define your route model bindings, pattern filters, etc.
     *
     * @return void
     */
    public function boot(){
        //

        parent::boot();
    }

    /**
     * Define the routes for the application.
     *
     * @return void
     */
    public function map(){
        //api路由
        $this->mapApiRoutes();
        //前端路由
        $this->mapWebRoutes();
        //后台路由
        $this->mapAdminRoutes();
        //网红中心路由
        $this->mapNetredRoutes();
        //广告主中心路由
        $this->mapAdsRoutes();
    }

    /**
     * Define the "web" routes for the application.
     *
     * These routes all receive session state, CSRF protection, etc.
     *
     * @return void
     */
    protected function mapWebRoutes(){
        Route::group([
            'middleware' => 'web',
            'namespace' => $this->namespace,
        ], function ($router) {
            require base_path('routes/web.php');
        });
    }

    /**
     * Define the "api" routes for the application.
     *
     * These routes are typically stateless.
     *
     * @return void
     */
    protected function mapApiRoutes(){
        Route::group([
            'middleware' => 'api',
            'namespace' => $this->namespace,
            'prefix' => 'api',
        ], function ($router) {
            require base_path('routes/api.php');
        });
    }

    /**
     * 自定义后台路由
     * @return void
     */
    protected function mapAdminRoutes(){
        Route::group([
            'middleware' => 'web',
            'prefix' => 'admin',
            'namespace' => $this->namespace,
        ], function ($router) {
            require base_path('routes/admin.php');
        });
    }

    /**
     * 自定义网红中心路由
     * @return void
     */
    protected function mapNetredRoutes(){
        Route::group([
            'middleware' => 'web',
            'prefix' => 'netred',
            'namespace' => $this->namespace,
        ], function ($router) {
            require base_path('routes/netred.php');
        });
    }

    /**
     * 自定义广告主中心路由
     * @return void
     */
    protected function mapAdsRoutes(){
        Route::group([
            'middleware' => 'web',
            'prefix' => 'ads',
            'namespace' => $this->namespace,
        ], function ($router) {
            require base_path('routes/ads.php');
        });
    }
}
