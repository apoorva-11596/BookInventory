class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :firstname
      t.string :lastname
      t.string :dateofbirth

      t.timestamps null: false
    end
  end
end
