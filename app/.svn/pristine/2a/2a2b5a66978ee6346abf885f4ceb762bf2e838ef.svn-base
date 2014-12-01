<?php

namespace App\Modules\Traveler;

class ServiceProvider extends \App\Modules\ServiceProvider {

    public function register()
    {
        parent::register('traveler');
        // Register facades

        /*$this->app->booting(function()
        {
            $loader = \Illuminate\Foundation\AliasLoader::getInstance();
            $loader->alias('Entry', 'App\Modules\Content\Facades\EntryFacade');
        });*/
    }

    public function boot()
    {
        parent::boot('traveler');
    }

}