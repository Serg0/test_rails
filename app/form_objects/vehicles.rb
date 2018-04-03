class Vehicles
  include ActiveModel::Model

  attr_reader :attributes, :make, :model, :year, :price, :comment

  def initialize(attributes)
    @attributes = attributes
  end

  def save
    ::VehicleService::Base.create_all(attributes)
  end
end
