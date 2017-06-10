# Make your Archivator archive a static site

This is an example of how you could list sites you want to archive
and describe how you want them to look locally.


## Use

1. Clone this repo, or fork it

        git clone https://github.com/renoirb/archivator-demo.git cookbook
        cd cookbook
        yarn install


1. Add an URL to a recipe you like to `archive/index.csv`

    Files goes as the following: `<URL>;<CSS selector of the main section of interest>;<CSS selectors of things you do not want>`


        http://www.finecooking.com/recipe/hot-garlicky-shrimp-with-asparagus-lemon;div.recipe__wrap;.recipe__top__content--secondary


1. Archive the recipes

    Which should write a copy of the page in `archive/finecooking.com/recipe/hot-garlicky-shrimp-with-asparagus/`,
    copy all images to it, and create a simplified version `index.md` in Markdown format.

        npm run archive


1. Make the archived URLs into HTML

    You can give it the look you want by changing `layouts/default.hbs`. It's just a rough starting point.
    Take a look at the awesome [Metalsmith](http://www.metalsmith.io/) project.

        npm run build

    Which will read all `archive/**/index.md` into respective `build/**/index.html`

3. Consult them or expose them on the Web. They're in `build/`

    So, now you have your own web cookbook


## Next up

Since this project is just about binding Archivator and a Static HTML site.

As such, you may want to take a look at [renoirb/archivator](https://github.com/renoirb/archivator)
where there will be other features than exporting into Markdown and then HTML.

Other *Archivator* features should include indexing content to ElasticSearch.


You may want to see This proje
