class AddGoalsTable < ActiveRecord::Migration[5.1]
  def change
    create_table :goals do |t|
      t.string :uuid
      t.belongs_to :user, index: true
      t.string :text, null: false, default: ""
      t.boolean :completed, default: false

      t.timestamps
    end
  end
end
