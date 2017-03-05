class CreateActionIdeaVotes < ActiveRecord::Migration
  def change
    create_table :action_idea_votes do |t|
      t.integer :action_idea_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
