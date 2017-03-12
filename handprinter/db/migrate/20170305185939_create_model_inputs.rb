class CreateModelInputs < ActiveRecord::Migration
  def change
    create_table :model_inputs do |t|
      t.integer :model_id
      t.integer :input_id
      t.integer :source_id
      t.string :units
      t.float :quantity
      t.string :actType

      t.timestamps null: false
    end
  end
end
