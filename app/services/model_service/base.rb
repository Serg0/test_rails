module ModelService
  class Base < BaseService
    def self.create(params)
      ModelService::Create.(params)
    end
  end
end
