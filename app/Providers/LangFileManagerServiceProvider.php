<?php

namespace Backpack\LangFileManager;

use Illuminate\Routing\Router;
use Illuminate\Support\ServiceProvider;
use App\Services\LangFiles;

class LangFileManagerServiceProvider extends ServiceProvider
{
    /**
     * Indicates if loading of the provider is deferred.
     *
     * @var bool
     */
    protected $defer = false;

    /**
     * Where the route file lives, both inside the package and in the app (if overwritten).
     *
     * @var string
     */
    public $routeFilePath = '/routes/backpack/langfilemanager.php';

    /**
     * Perform post-registration booting of services.
     *
     * @return void
     */
    public function boot()
    {
        // LOAD THE VIEWS
        // - first the published/overwritten views (in case they have any changes)
        $this->loadViewsFrom(resource_path('views/vendor/backpack/langfilemanager'), 'langfilemanager');
        // - then the stock views that come with the package, in case a published view might be missing
        $this->loadViewsFrom(realpath(__DIR__.'/resources/views'), 'langfilemanager');

        // $this->loadTranslationsFrom(realpath(__DIR__.'/resources/lang'), 'backpack');

        // publish config file
        $this->publishes([__DIR__.'/config/backpack/langfilemanager.php' => config_path('backpack/langfilemanager.php')], 'config');
        // publish views
        $this->publishes([__DIR__.'/resources/views' => resource_path('views/vendor/backpack/langfilemanager')], 'views');
        // publish lang files
        $this->publishes([__DIR__.'/resources/lang' => resource_path('lang/vendor/backpack')], 'lang');

        // publish the migrations and seeds
        $this->publishes([__DIR__.'/database/migrations/' => database_path('migrations')], 'migrations');

        // use the vendor configuration file as fallback
        $this->mergeConfigFrom(__DIR__.'/config/backpack/langfilemanager.php', 'langfilemanager');
    }

    /**
     * Define the routes for the application.
     *
     * @param  \Illuminate\Routing\Router  $router
     * @return void
     */
    public function setupRoutes(Router $router)
    {
        // by default, use the routes file provided in vendor
        $routeFilePathInUse = __DIR__.$this->routeFilePath;
        // but if there's a file with the same name in routes/backpack, use that one
        if (file_exists(base_path().$this->routeFilePath)) {
            $routeFilePathInUse = base_path().$this->routeFilePath;
        }
        $this->loadRoutesFrom($routeFilePathInUse);
    }

    /**
     * Register any package services.
     *
     * @return void
     */
    public function register()
    {
        $this->registerLangFileManager();
        $this->setupRoutes($this->app->router);

        $this->app->singleton('langfile', function ($app) {
            return new LangFiles($app['config']['app']['locale']);
        });

        // use this if your package has a config file
        // config([
        //         'config/langfilemanager.php',
        // ]);
    }

    private function registerLangFileManager()
    {
        $this->app->bind('langfilemanager', function ($app) {
            return new LangFileManager($app);
        });
    }
}
