class RecreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.string :content
      t.integer :user_id
      t.integer :store_id

      t.timestamps
    end
  end
end
