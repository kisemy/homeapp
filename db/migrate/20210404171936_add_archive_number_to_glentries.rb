class AddArchiveNumberToGlentries < ActiveRecord::Migration[6.0]
  def change
    add_column :glentries, :archive_number, :string
  end
end
