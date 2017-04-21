class CreateBookInvs < ActiveRecord::Migration
  def change
    create_table :book_invs do |t|
      t.integer :book_id
      t.integer :inventory_id
      t.integer :copies

      t.timestamps null: false
    end
  end
end
