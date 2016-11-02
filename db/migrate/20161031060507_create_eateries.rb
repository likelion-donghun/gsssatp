class CreateEateries < ActiveRecord::Migration
  def change
    create_table :eateries do |t|
      t.string :name
      t.string :callnumber
      t.string :style
      t.string :openhour
      
      
      
      t.timestamps null: false
    end
  end
end
