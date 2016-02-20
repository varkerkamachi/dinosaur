class CreateDinos < ActiveRecord::Migration
  def change
    create_table :dinos do |t|
      t.string :name
      t.text :description
      t.jsonb :metadata
      t.references :era, index: true, foreign_key: true
      t.string :diet
      t.references :location, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
