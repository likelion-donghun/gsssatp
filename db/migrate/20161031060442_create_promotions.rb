class CreatePromotions < ActiveRecord::Migration
  def change
    create_table :promotions do |t|
      t.string :name
      t.string :content
      t.string :image
      t.string :restaurant
      t.belongs_to :eatery
      t.references :user, index: true, foreign_key: true
      
    
      t.timestamps null: false
    end
  end
end
