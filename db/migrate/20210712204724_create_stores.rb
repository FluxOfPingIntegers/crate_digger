class CreateStores < ActiveRecord::Migration[6.1]
  def change
    create_table :stores do |t|
      t.string :name
      t.string :address
      t.string :img
      t.string :web
      t.integer :phone

      # need to see how hours should be stored given that they are dependant on days, will be string for now.
      t.string :hours

      t.integer :city_id

      t.timestamps
    end
  end
end
