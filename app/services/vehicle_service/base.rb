module VehicleService
  class Base < BaseService
    def self.create_all(params)
      VehicleService::CreateAll.(params)
    end
  end
end
