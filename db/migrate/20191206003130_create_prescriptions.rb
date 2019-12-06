class CreatePrescriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :prescriptions do |t|
      t.integer :medication_id
      t.integer :provider_id
      t.datetime :prescribed_date

      t.timestamps
    end
  end
end
