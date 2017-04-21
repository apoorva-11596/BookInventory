class BookInv < ActiveRecord::Base
	belongs_to :book
	belongs_to :inventory
end
