class CreateRicetudies < ActiveRecord::Migration
  def change
    create_table :ricetudies do |t|
      t.string :title
      t.string :eatery
      t.datetime :start
      t.datetime :end_at
      t.string :content
      t.string :contact
      t.string :image
      t.timestamps null: false
      t.references :user, index: true, foreign_key: true
    end
  end
end
