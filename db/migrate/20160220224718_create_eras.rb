class CreateEras < ActiveRecord::Migration
  def change
    create_table :eras do |t|
      t.string :name
      t.string :duration
      t.string :began
      t.string :ended

      t.timestamps null: false
    end
  end
end
