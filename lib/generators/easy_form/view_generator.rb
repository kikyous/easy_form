module EasyForm
  module Generators
    class ViewGenerator < Rails::Generators::Base
      class_option :template_engine, :type => :string, :aliases => '-e', :desc => 'Template engine for the views. Available options are "erb", "haml", and "slim".'
      source_root File.expand_path('../', __FILE__)
      desc "This generator creates an initializer file at config/initializers"
      def copy_default_template_file
        copy_file "views/easy_form/_bootstrap.html.erb", 'app/views/easy_form/_bootstrap.html.erb'
        copy_file "views/easy_form/_default.html.erb", 'app/views/easy_form/_default.html.erb'
      end
    end
  end
end
