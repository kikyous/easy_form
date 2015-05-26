module EasyForm
  class Field
    attr_accessor :builder, :type, :options, :args
    def initialize(builder, args)
      @builder = builder
      @options = args.extract_options!
      @args = args
    end

    def field
      @args[1]
    end

    def model
      builder.object.class
    end

    def input
      builder.send(*args, options)
    end

    def required?
      model.validators_on(field).any?{ActiveRecord::Validations::PresenceValidator}
    end

    def label_text
      field.to_s.humanize
    end

    def template_name
      builder.options[:template] || options[:template] || :default
    end

    def to_s
      EasyForm::Template.render(template_name, binding)
    end
  end
end
