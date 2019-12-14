class AddCalledInToPrescriptions < ActiveRecord::Migration[5.2]
  def change
    add_column :prescriptions, :called_in, :boolean, default: true
  end
end
