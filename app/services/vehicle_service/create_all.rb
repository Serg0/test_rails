module VehicleService
  class CreateAll < BaseService
    def call
      self.response = save_vehicle_collection
      self.status   = true if errors.blank?

      self
    end

    private

    def save_vehicle_collection
      collection = []

      ActiveRecord::Base.transaction do
        params.values.each do |vehicle_params|
          result = create(vehicle_params)

          collection << result if errors.blank?
        end
      end

      return collection
    end

    def create(params)
      vehicle = Vehicle.create(prepared_params(params))

      return vehicle if vehicle.valid?

      self.errors << vehicle.errors.full_messages.to_sentence
    end

    def prepared_params(params)
      {
        model:   model(params[:model_id]),
        make:    make(params[:make_id]),
        year:    params[:year],
        price:   params[:price],
        comment: params[:comment],
        images:  params[:images]
      }
    end

    def model(id)
      Model.find_by_id(id) || create_model(id).response
    end

    def make(id)
      Make.find_by_id(id) || create_make(id).response
    end

    def create_model(name)
      ::ModelService::Create.new(name).call
    end

    def create_make(name)
      ::MakeService::Create.new(name).call
    end
  end
end
