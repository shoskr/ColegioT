<?php

namespace colegioT\Providers;

use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider {

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot() {
        //
    }

    /**
     * Register any application services.
     *
     * This service provider is a great spot to register your various container
     * bindings with the application. As you can see, we are registering our
     * "Registrar" implementation here. You can add your own bindings too!
     *
     * @return void
     */
    /* public function register() esta es la original
      {
      $this->app->bind(
      'Illuminate\Contracts\Auth\Registrar',
      'colegioT\Services\Registrar'
      );
      } */
    public function register() {//lo ocupe para la ingeneria inversa
        if ($this->app->environment() == 'local') {
            $this->app->register('Iber\Generator\ModelGeneratorProvider');
        }
    }

}
