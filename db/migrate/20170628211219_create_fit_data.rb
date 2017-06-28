class CreateFitData < ActiveRecord::Migration[5.1]
  def change
    create_table :fitbit_data do |t|
      t.references :user, index: true, foreign_key: true
      t.text :content
      t.string :date
      t.string :resource_type

      t.timestamps null: false
    end

    add_index :fitbit_data, [:date, :resource_type]
  end
end
