lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'easy_form/version'
Gem::Specification.new do |s|
  s.name        = 'easy_form'
  s.version     = EasyForm::VERSION
  s.date        = '2015-05-26'
  s.summary     = "A simple form builder gem"
  s.description = "A simple form builder gem"
  s.authors     = ["kikyous"]
  s.email       = 'kikyous@163.com'
  s.files       = ["lib/easy_form.rb", 'lib/generators/initializer_generator.rb']
  s.homepage    = 'https://github.com/kikyous/easy_form'
  s.license     = 'MIT'
end
