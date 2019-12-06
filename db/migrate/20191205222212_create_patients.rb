class CreatePatients < ActiveRecord::Migration[5.2]
  def change
    create_table :patients do |t|
      t.string :username
      t.string :email
      t.string :password_digest

      t.timestamps
    end
  end
end
