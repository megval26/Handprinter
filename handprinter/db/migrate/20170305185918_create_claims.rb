class CreateClaims < ActiveRecord::Migration
  def change
    create_table :claims do |t|
      t.integer :model_id
      t.string :description

      t.timestamps null: false
    end
  end
end
