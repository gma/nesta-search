README
======

nesta-search is a plugin for the Nesta CMS for automatically linking to
other related content on your site. It uses the [Ferret][1] full text
search engine to find content on your site that is related to the
current page.

Full text search (so you can add a search box to your site) is planned.

Installation
------------

To install it as a gem add nesta-search to the `Gemfile` in your Nesta
project, and then re-run `bundle`:

    $ echo "gem 'nesta-search', '0.0.1'" >> Gemfile
    $ bundle

If you'd rather install the plugin locally (which is useful if you want
to modify the code a bit):

    $ mkdir -p plugins
    $ cd plugins
    $ git clone https://github.com/gma/nesta-search.git
    $ grep '^gem' nesta-search/Gemfile >> ../Gemfile
    $ cd .. && bundle
