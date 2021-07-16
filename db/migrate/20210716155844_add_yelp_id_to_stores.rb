class AddYelpIdToStores < ActiveRecord::Migration[6.1]
  def change
    add_column :stores, :yelp_id, :string
  end
end
