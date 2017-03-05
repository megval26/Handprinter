class CreateInputs < ActiveRecord::Migration
  def change
    create_table :inputs do |t|
      t.string :name
      t.string :category
      t.string :example

      t.timestamps null: false
    end
  end
end
