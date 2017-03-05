class CreateSources < ActiveRecord::Migration
  def change
    create_table :sources do |t|
      t.integer :claim_id
      t.string :link

      t.timestamps null: false
    end
  end
end
