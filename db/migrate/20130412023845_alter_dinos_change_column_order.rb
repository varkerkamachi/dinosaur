class AlterDinosChangeColumnOrder < ActiveRecord::Migration
  def up
    execute "ALTER TABLE dinos MODIFY COLUMN created_at datetime AFTER location, MODIFY COLUMN updated_at datetime AFTER created_at"
  end

  def down
    execute "ALTER TABLE dinos MODIFY COLUMN created_at datetime AFTER speed, MODIFY COLUMN updated_at datetime AFTER created_at"
  end
end
