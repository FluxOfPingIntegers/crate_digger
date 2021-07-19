class ChangeStateIdToStoreIdOnComments < ActiveRecord::Migration[6.1]
  def change
    rename_column :comments, :state_id, :store_id
  end
end
