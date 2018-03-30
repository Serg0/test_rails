class CreateVehicles < ActiveRecord::Migration[5.1]
  def change
    create_table :vehicles do |t|
      t.integer :year
      t.decimal :price, scale: 2, precision: 10
      t.integer :make_id, index: true
      t.integer :model_id, index: true
      t.text :comment

      t.timestamps
    end
  end
end
