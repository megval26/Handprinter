class CreateActionIdeaComments < ActiveRecord::Migration
  def change
    create_table :action_idea_comments do |t|
      t.integer :action_idea_id
      t.integer :user_id
      t.date :date_created
      t.string :text

      t.timestamps null: false
    end
  end
end
