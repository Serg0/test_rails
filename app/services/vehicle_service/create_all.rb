module VehicleService
  class CreateAll < BaseService
    def call
      self.response = save_vehicle_collection
      self.status   = true
    end

    private

    def save_vehicle_collection
      params.each do |_, vehicle_params|
        binding.pry
        create(vehicle_params)

        break if errors.present?
      end
    end

    def create(params)
      vehicle = Vehicle.create(
        model:   model(params[:model_id]),
        model:   model(params[:make_id]),
        year:    params[:year],
        price:   params[:price],
        comment: params[:comment],
        image:   params[:image]
      )

      self.errors = vehicle.errors unless vehicle.valid?
    end

    def model(id)
      Model.find_by_id(id)
    end

    def make(id)
      Make.find_by_id(id)
    end
  end
end
