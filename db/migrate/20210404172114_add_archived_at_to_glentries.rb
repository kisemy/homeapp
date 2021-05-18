class AddArchivedAtToGlentries < ActiveRecord::Migration[6.0]
  def change
    add_column :glentries, :archived_at, :datetime
  end
end
