class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.integer :id
      t.string :iso
      t.string :country

      t.timestamps
    end
  end
end
