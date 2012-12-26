class CreateDinos < ActiveRecord::Migration
  def change
    create_table :dinos do |t|
      t.integer :id
      t.string :name
      t.text :description
      t.string :image
      t.string :thumb
      t.string :terrain
      t.integer :weight
      t.integer :height
      t.integer :speed

      t.timestamps
    end
  end
end
