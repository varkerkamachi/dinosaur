class AddEraAndDiettoDinos < ActiveRecord::Migration
  def up
    add_column :dinos, :era, :string
    add_column :dinos, :diet, :string
  end

  def down
    remove_column :dinos, :era, :string
    remove_column :dinos, :diet, :string
  end
end
