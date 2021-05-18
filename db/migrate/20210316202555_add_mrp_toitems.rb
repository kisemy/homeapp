class AddMrpToitems < ActiveRecord::Migration[6.0]
  def change

 add_column :items, :MRP, :decimal
  end
end
