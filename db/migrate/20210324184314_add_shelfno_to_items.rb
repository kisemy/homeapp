class AddShelfnoToItems < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :shelfno, :text
  end
end
