class AddInventorygroupToItems < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :inventorygroup, :text
  end
end
