class CreateModelComments < ActiveRecord::Migration
  def change
    create_table :model_comments do |t|
      t.integer :model_id
      t.integer :user_id
      t.date :date_created
      t.string :text

      t.timestamps null: false
    end
  end
end
