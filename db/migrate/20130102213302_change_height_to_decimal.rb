class ChangeHeightToDecimal < ActiveRecord::Migration
  def up
    change_table :dinos do |t|
      t.change :height, :decimal, :precision=>8, :scale=>2
    end
  end

  def down
    change_table :dinos do |t|
      t.change :height, :integer
    end
  end
end
