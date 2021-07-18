class ChangeStoresPhone < ActiveRecord::Migration[6.1]
  def change
    change_column :stores, :phone, :string
  end
end
