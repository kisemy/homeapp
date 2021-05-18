class AddUnitofmeasureToItems < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :unitofmeasure, :text
  end
end
