class CreateRicetudies < ActiveRecord::Migration
  def change
    create_table :ricetudies do |t|

      t.timestamps null: false
    end
  end
end
