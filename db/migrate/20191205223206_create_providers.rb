class CreateProviders < ActiveRecord::Migration[5.2]
  def change
    create_table :providers do |t|
      t.text :name
      t.text :phone
      t.text :location

      t.timestamps
    end
  end
end
