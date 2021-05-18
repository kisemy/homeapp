class AddSalespriceToItems < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :salesprice, :decimal
  end
end
