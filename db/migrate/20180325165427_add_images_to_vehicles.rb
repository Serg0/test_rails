class AddImagesToVehicles < ActiveRecord::Migration[5.1]
  def change
    add_column :vehicles, :images, :json
  end
end
