module EasyForm
  module Builder
    def field(*args)
      EasyForm::Field.new(self, args)
    end
  end
end
