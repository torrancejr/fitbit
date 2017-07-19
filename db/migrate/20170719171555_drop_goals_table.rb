class DropGoalsTable < ActiveRecord::Migration[5.1]
  def up
    drop_table :goals
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
