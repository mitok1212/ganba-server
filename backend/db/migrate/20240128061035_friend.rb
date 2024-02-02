class Friend < ActiveRecord::Migration[7.0]
  def change
    create_table :friends do |t|
      t.string :friendme, :null => false
      t.string :friendyou, :null => false
      t.timestamps
    end
  end
end
