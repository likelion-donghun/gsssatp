class CreateEateries < ActiveRecord::Migration
  def change
    create_table :eateries do |t|
      t.string :name
      t.string :callnumber
      t.string :style
      t.string :openhour
      t.string :image
      t.string :menu
      t.references :user, index: true, foreign_key: true
      
      
      t.timestamps null: false
    end
  end
end
