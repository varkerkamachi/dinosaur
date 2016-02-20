class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.references :climate, index: true, foreign_key: true
      t.jsonb :metadata

      t.timestamps null: false
    end
  end
end
