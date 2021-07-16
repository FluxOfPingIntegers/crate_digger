class AddZipCodeToStores < ActiveRecord::Migration[6.1]
  def change
    add_column :stores, :zip_code, :string
  end
end
