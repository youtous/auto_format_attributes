$:.push File.expand_path("../lib", __FILE__)
require "auto_format_attributes/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "auto_format_attributes"
  s.version     = AutoFormatAttributes::VERSION
  s.authors     = ["youtous"]
  s.email       = ["contact@youtous.me"]
  s.homepage    = "https://github.com/youtous/auto_format_attributes"
  s.summary     = "AutoFormatAttributes Rails model."
  s.description = "Help to format strings in Rails before validation of the Model."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_runtime_dependency "activerecord", ">= 4.0"
end
