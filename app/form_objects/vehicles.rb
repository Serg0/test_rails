class Vehicles
  include ActiveModel::Model

  attr_reader :attributes, :make, :model, :year, :price, :comment

  def initialize(attributes)
    @attributes = attributes
  end

  def save
    ::VehicleService::CreateAll.new(attributes).call
  end
end
