class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.string   :provider
      t.string   :uid
      t.string   :name
      t.string   :email
      t.datetime :created_at, null: false
      t.datetime :updated_at, null: false
      t.references :user

    end
  end
end
