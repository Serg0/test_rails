module MakeService
  class Create < Base
    def call
      self.response = create_make
      self.status   = true if errors.blank?

      self
    end

    private

    def create_make
      make = Make.create(label: params)
      errors << make.errors.full_messages.to_sentence if make.errors.present?
      make
    end
  end
end
