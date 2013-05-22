class DropTableHerd < ActiveRecord::Migration
  def up
    drop_table :herds
  end

  def down
    create_table :herds do |t|
      t.string :name
      t.integer :size

      t.timestamps
    end
  end
end
