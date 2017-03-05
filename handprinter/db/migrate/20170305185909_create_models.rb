class CreateModels < ActiveRecord::Migration
  def change
    create_table :models do |t|
      t.integer :user_id
      t.integer :action_idea_id
      t.date :date_created
      t.integer :category
      t.string :description
      t.string :anchor
      t.string :equation
      t.string :assumptions

      t.timestamps null: false
    end
  end
end
