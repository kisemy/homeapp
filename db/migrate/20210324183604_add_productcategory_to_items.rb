class AddProductcategoryToItems < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :productcategory, :text
  end
end
