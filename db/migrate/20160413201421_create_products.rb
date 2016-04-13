class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :type
      t.string :country
      t.integer :price
      t.text :taste
      t.string :smell
      t.time :durability
      t.string :use
      t.string :purchasing_info
      t.string :pronunciation
      t.float :rating
      t.text :notes

      t.timestamps null: false
    end
  end
end
