class ChangeWeightToDecimal < ActiveRecord::Migration
  def up
    change_table :dinos do |t|
      t.change :weight, :decimal, :precision=>8, :scale=>2
    end
  end

  def down
    change_table :dinos do |t|
      t.change :weight, :integer
    end
  end
end
