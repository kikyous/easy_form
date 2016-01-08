module EasyForm
  class Field
    attr_accessor :builder, :type, :options, :args
    def initialize(builder, args, &block)
      @builder = builder
      @options = args.extract_options!
      @args    = args
      @block   = block
    end

    def field
      @args[1]
    end

    def model
      builder.object.class
    end

    def input(options={})
      builder.send(*args, @options.merge(options), &@block)
    end

    def required?
      field && model.validators_on(field).any?{ActiveRecord::Validations::PresenceValidator}
    end

    def label_text
      options[:label] || model.human_attribute_name(field)
    end

    def to_s
      EasyForm::Template.render(template_name, binding)
    end

    def template_name
      builder.options[:template] || options[:template] || :default
    end
  end
end
