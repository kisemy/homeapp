class AddDeletedAtToGlentries < ActiveRecord::Migration[6.0]
  def change
    add_column :glentries, :deleted_at, :date
  end
end
