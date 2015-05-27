module EasyForm
  module Builder
    def field(*args, &block)
      EasyForm::Field.new(self, args, &block)
    end
  end
end
