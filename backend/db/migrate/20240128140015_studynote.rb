class Studynote < ActiveRecord::Migration[7.0]
  def change
    create_table :studynotes do |t|
      t.date :date, :null => false
      t.time :studytime, :null => false
      t.string :subject, :null => false
      t.string :username, :null => false
      t.text :goal ,:null => false
      t.text :studycontent ,:null => false
    end
  end
end
