class CreateModelVotes < ActiveRecord::Migration
  def change
    create_table :model_votes do |t|
      t.integer :model_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
