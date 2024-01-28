class User < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name, :null => false
      t.string :password, :null => false
      t.string :friend, :null => false
      t.integer :login, :null => false, :default => 0
      t.datetime :login_time 
      t.timestamps
    end
  end
end
