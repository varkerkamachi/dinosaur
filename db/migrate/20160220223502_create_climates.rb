class CreateClimates < ActiveRecord::Migration
  def change
    create_table :climates do |t|
      t.string :name
      t.text :description
      t.jsonb :metadata

      t.timestamps null: false
    end
  end
end
