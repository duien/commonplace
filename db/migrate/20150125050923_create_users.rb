class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, unique: true, null: false
      t.string :display_name
      t.string :email, unique: true, null: false

      t.string :password_digest, null: false

      t.timestamp :confirmed_at
      t.timestamps null: false
    end
  end
end
