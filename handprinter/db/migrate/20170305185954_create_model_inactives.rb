class CreateModelInactives < ActiveRecord::Migration
  def change
    create_table :model_inactives do |t|
      t.integer :model_id
      t.string :reason
      t.integer :user_id
      t.date :date_created

      t.timestamps null: false
    end
  end
end
