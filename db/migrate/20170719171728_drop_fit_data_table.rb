class DropFitDataTable < ActiveRecord::Migration[5.1]
  def up
    drop_table :fitbit_data
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
