class CreateInventories < ActiveRecord::Migration
  def change
    create_table :inventories do |t|
      t.integer :book_id
      t.integer :num_of_copies
      t.integer :price
      t.integer :store_id

      t.timestamps null: false
    end
  end
end
