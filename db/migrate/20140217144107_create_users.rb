class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string   :login
      t.string   :email
      t.string   :crypted_password,      :limit => 40
      t.string   :salt,                  :limit => 40
      t.datetime :created_at
      t.datetime :updated_at
      t.string   :remember_token
      t.datetime :remember_token_expires_at
      t.string   :activation_code,           :limit => 40
      t.datetime :activated_at
      t.string   :password_reset_code,       :limit => 40
      t.boolean  :enabled,                  :default => true
      t.timestamps
    end
  end
end
