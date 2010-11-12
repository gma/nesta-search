# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "nesta-search/version"

Gem::Specification.new do |s|
  s.name        = "nesta-search"
  s.version     = Nesta::Search::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Matthias Marschall", "Stephen Nelson-Smith", "Graham Ashton"]
  s.email       = ["?", "sanelson@gmail.com", "graham@effectif.com"]
  s.homepage    = "http://rubygems.org/gems/nesta-search"
  s.summary     = %q{Search plugin for Nesta CMS}
  s.description = %q{Uses Ferret to find articles related to the current article.}

  s.rubyforge_project = "nesta-search"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
