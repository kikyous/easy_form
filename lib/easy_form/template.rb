module EasyForm
  class Template
    class << self
      def store
        return {} if Rails.env.development?
        @store ||= {}
      end

      def cache(name)
        store[name] ||= yield
      end

      def render(template_name, binding)
        template = cache template_name do
          File.read [Rails.root, '/app/views/easy_form/_', template_name, '.html.erb'].join
        end
        ERB.new(template).result(binding).html_safe
      end
    end
  end
end
