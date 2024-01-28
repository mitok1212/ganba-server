class Reaction < ActiveRecord::Migration[7.0]
  def change
    create_table :reactions do |t|
      t.string :myname, :null => false
      t.string :yourname, :null => false
      t.integer :kind,  :null => false, :default => 0
      t.integer :kind_time
      t.timestamps
    end
  end
end
