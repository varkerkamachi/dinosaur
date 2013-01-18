class AddLocationToDino < ActiveRecord::Migration
  def up
    add_column :dinos, :location, :string
  end
  def down
    remove_column :dinos, :location, :string
  end
end
