class AddBarcodeToItems < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :barcode, :text
  end
end
