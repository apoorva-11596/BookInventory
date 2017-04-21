class RemoveINdedx < ActiveRecord::Migration
  def change
  	remove_index :stores, :email
  end
end
