class CreateMorgages < ActiveRecord::Migration[6.0]
  def change
    create_table :morgages do |t|
      t.text :Firstname
      t.text :Middlename
      t.text :Lastname
      t.date :Dateofbirth
      t.text :IDno
      t.text :Pinno
      t.text :Designation
      t.text :Jobgroup
      t.text :ministry
      t.text :department
      t.text :station
      t.text :Address
      t.text :Telephone
      t.text :Mobile
      t.text :Email
      t.text :Maritalstatus
      t.decimal :Amount

      t.timestamps
    end
  end
end
