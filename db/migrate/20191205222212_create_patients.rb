class CreatePatients < ActiveRecord::Migration[5.2]
  def change
    create_table :patients do |t|
      t.string :name
      t.string :birthday
      t.integer :mrn

      t.timestamps
    end
  end
end
