class Vehicles
  include ActiveModel::Model

  attr_reader :attributes, :make, :model, :year, :price, :comment

  def initialize(attributes)
    @attributes = attributes[:vehicle]
  end

  def save
    Vehicle.create(attributes)
  end

  private
end