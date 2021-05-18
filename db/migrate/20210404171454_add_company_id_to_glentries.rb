class AddCompanyIdToGlentries < ActiveRecord::Migration[6.0]
  def change
    add_column :glentries, :company_id, :bigint
  end
end
