class CreateMedications < ActiveRecord::Migration[5.2]
  def change
    create_table :medications do |t|
      t.text :name
      t.text :class
      t.text :dose
      t.text :frequency
      t.text :route

      t.timestamps
    end
  end
end
