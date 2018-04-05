module ModelService
  class Create < BaseService
    def call
      self.response = create_model
      self.status   = true if errors.blank?

      self
    end

    private

    def create_model
      record = Model.create(label: params)
      errors << record.errors.full_messages.to_sentence if record.errors.present?
      record
    end
  end
end
