class ChangeSpeedToDecimal < ActiveRecord::Migration
  def up
    change_table :dinos do |t|
      t.change :speed, :decimal, :precision=>8, :scale=>2
    end
  end

  def down
    change_table :dinos do |t|
      t.change :speed, :integer
    end
  end
end
