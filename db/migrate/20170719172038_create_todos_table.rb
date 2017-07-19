class CreateTodosTable < ActiveRecord::Migration[5.1]
  def change
    create_table :todos_tables do |t|
      t.string "uuid"
      t.bigint "user_id"
      t.string "text", default: "", null: false
      t.boolean "completed", default: false
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.index ["user_id"], name: "index_goals_on_user_id"
    end
  end
end
