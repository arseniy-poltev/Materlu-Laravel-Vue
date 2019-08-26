<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Spatie\Sitemap\SitemapGenerator;
use Spatie\Sitemap\SitemapIndex;

class GenerateSitemap extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'sitemap:generate';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Generate the sitemap.';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return mixed
     */
    public function handle()
    {
        $sitemap_index = SitemapIndex::create();

        foreach (get_active_languages_codes() as $lang){
            SitemapGenerator::create(rtrim(config('app.url'), '/') . '/' . $lang )
                ->writeToFile(public_path(DIRECTORY_SEPARATOR . 'sitemaps' . DIRECTORY_SEPARATOR . $lang . '_sitemap.xml'));
            $sitemap_index->add(rtrim(config('app.url'), '/') . '/sitemaps/' . $lang . '_sitemap.xml');
        }

        $sitemap_index->writeToFile(public_path('sitemap.xml'));
    }
}
