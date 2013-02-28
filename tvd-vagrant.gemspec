# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

require "tvd-vagrant/version"

Gem::Specification.new do |s|
  s.name        = "tvd-vagrant"
  s.version     = TVDinner::Vagrant::VERSION
  s.homepage    = "http://destructuring.org/tvd-vagrant"
  s.license     = "Apache 2.0"

  s.executables  = []
  s.test_files   = `git ls-files -- {spec,tasks}/*`.split("\n")
  s.files        = `git ls-files -- lib/* cookbooks/*`.split("\n") 

  s.files       += s.test_files
  s.files       += s.executables.map {|f| File.join("bin", f) }
  s.files       +=  %w(LICENSE NOTICE VERSION README.md)

  s.require_path = "lib"

  s.add_dependency "microwave"

  s.author      = "Tom Bombadil"
  s.email       = "amanibhavam@destructuring.org"
  s.summary     = "vagrant cookbook and utilities"
  s.description = "vagrant cookbook and utilities"
end
