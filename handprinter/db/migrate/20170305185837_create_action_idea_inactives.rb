class CreateActionIdeaInactives < ActiveRecord::Migration
  def change
    create_table :action_idea_inactives do |t|
      t.string :action_idea_id
      t.string :integer
      t.string :reason
      t.integer :user_id
      t.date :date_created

      t.timestamps null: false
    end
  end
end
