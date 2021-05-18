class AddReorderlevelToItems < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :reorderlevel, :decimal
  end
end
