class CreateWatchlists < ActiveRecord::Migration[5.1]
  def change
    create_table :watchlists do |t|
      t.string :name
      t.string :description 
      t.integer :user_id 

      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false

    end
  end
end
