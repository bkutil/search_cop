lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "search_cop/version"

Gem::Specification.new do |spec|
  spec.name          = "search_cop"
  spec.version       = SearchCop::VERSION
  spec.authors       = ["Benjamin Vetter"]
  spec.email         = ["vetter@flakks.com"]
  spec.description   = "Search engine like fulltext query support for ActiveRecord"
  spec.summary       = "Easily perform complex search engine like fulltext queries on your ActiveRecord models"
  spec.homepage      = "https://github.com/mrkamel/search_cop"
  spec.license       = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/mrkamel/search_cop"
  spec.metadata["changelog_uri"] = "https://github.com/mrkamel/search_cop/blob/master/CHANGELOG.md"

  spec.files         = `git ls-files`.split($INPUT_RECORD_SEPARATOR)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "treetop"

  spec.add_development_dependency "activerecord", ">= 3.0.0"
  spec.add_development_dependency "bundler"
  spec.add_development_dependency "factory_bot"
  spec.add_development_dependency "minitest"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rubocop"
end
