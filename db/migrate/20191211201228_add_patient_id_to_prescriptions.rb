class AddPatientIdToPrescriptions < ActiveRecord::Migration[5.2]
  def change
    add_column :prescriptions, :patient_id, :string
  end
end
