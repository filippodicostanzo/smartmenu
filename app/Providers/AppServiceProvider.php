<?php

namespace App\Providers;


use App\Models\ItemCategory;
use Illuminate\Contracts\Events\Dispatcher;
use Illuminate\Support\ServiceProvider;
use JeroenNoten\LaravelAdminLte\Events\BuildingMenu;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot(Dispatcher $events)
    {

        if (config('fdc.app_public') == true) {
            $this->app->bind('path.public', function() {
                return base_path().'/';
            });
        }

        $events->listen(BuildingMenu::class, function (BuildingMenu $event) {

            $item_categories = ItemCategory::all()->sortBy('name_it')->map(function (ItemCategory $item) {
                return [
                    'text' => $item['name_it'],
                    'url' => url('admin/items?cat='.$item['id_code']),
                    'active' => ['admin/items/?cat=1', '?cat=1'],
                    'class' => ['active'],
                ];


            });
            $event->menu->addIn('items',...$item_categories);

        });
    }
}
