class CreateGlentries < ActiveRecord::Migration[6.0]
  def change
    create_table :glentries do |t|
      t.date :date
      t.text :description
      t.decimal :amount

      t.timestamps
    end
  end
end
