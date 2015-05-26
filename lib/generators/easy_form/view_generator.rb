module EasyForm
  module Generators
    class ViewGenerator < Rails::Generators::Base
      source_root File.expand_path('../', __FILE__)
      desc "This generator copy template files to app/views/easy_form"
      def copy_default_template_file
        copy_file "views/easy_form/_bootstrap.html.erb", 'app/views/easy_form/_bootstrap.html.erb'
        copy_file "views/easy_form/_default.html.erb", 'app/views/easy_form/_default.html.erb'
      end
    end
  end
end
