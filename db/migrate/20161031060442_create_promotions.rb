class CreatePromotions < ActiveRecord::Migration
  def change
    create_table :promotions do |t|
      t.string :name
      t.string :content
      t.string :image
      
    
      t.timestamps null: false
    end
  end
end
