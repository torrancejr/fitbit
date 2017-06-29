class CreateUsers < ActiveRecord::Migration[5.1]
  def change
  create_table :users do |t|
    t.string :uid
    t.string :provider
    t.string :access_token
    t.string :refresh_token
    t.string :timezone
    t.integer :expires_at #the UTC timesteamp at which the access_token expires

    t.timestamps null: false
  end
end
end
