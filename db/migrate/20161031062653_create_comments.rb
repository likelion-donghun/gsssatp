class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
  
    t.string :content
    t.string :image
    t.references :user, index: true, foreign_key: true
    t.references :eatery, index: true, foreign_key: true
    t.references :promotion, index: true, foreign_key: true
    t.references :ricetudy, index: true, foreign_key: true
    
      t.timestamps null: false
    end
  end
end
