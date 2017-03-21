class CreateActionIdeas < ActiveRecord::Migration
  def change
    create_table :action_ideas do |t|
      t.integer :user_id
      t.string :name
      t.string :description
      t.string :references
      t.string :category
      t.date :date_created
      t.boolean :active
      t.string :tags

      t.timestamps null: false
    end
  end
end
