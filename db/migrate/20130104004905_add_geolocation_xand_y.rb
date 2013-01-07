class AddGeolocationXandY < ActiveRecord::Migration
  def up
    add_column :dinos, :geoX, :float, :precision => 10, :scale => 7
    add_column :dinos, :geoY, :float, :precision => 10, :scale => 7
  end

  def down
    remove_column :dinos, :geoX
    remove_column :dinos, :geoY
  end
end
