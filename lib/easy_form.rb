require 'easy_form/builder'
require 'easy_form/field'
require 'easy_form/template'
require 'easy_form/version'
class Railtie < Rails::Railtie
  initializer "easy_form.initialize" do |app|
    ActionView::Helpers::FormBuilder.class_eval do
      include EasyForm::Builder
    end
  end
end
