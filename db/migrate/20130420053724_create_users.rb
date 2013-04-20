class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :name
      t.string :status
      t.decimal :balance

      t.timestamps
    end
    add_index :users, :username, :unique => true
    add_index :users, :status
  end
end
