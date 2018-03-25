class CreateModels < ActiveRecord::Migration[5.1]
  def change
    create_table :models do |t|
      t.string :label, null: false
      t.integer :make_id, index: true

      t.timestamps
    end
  end
end
