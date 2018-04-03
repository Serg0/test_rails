module MakeService
  class Base < BaseService
    def self.create(params)
      MakeService::Create.(params)
    end
  end
end
