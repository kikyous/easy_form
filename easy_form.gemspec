lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'easy_form/version'
Gem::Specification.new do |s|
  s.name        = 'easy_form'
  s.version     = EasyForm::VERSION
  s.date        = '2015-05-26'
  s.summary     = "form builder without complex dsl"
  s.description = "form builder without complex dsl"
  s.authors     = ["kikyous"]
  s.email       = 'kikyous@163.com'
  s.files       = `git ls-files`.split("\n")
  s.homepage    = 'https://github.com/kikyous/easy_form'
  s.license     = 'MIT'
end
