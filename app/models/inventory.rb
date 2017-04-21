class Inventory < ActiveRecord::Base
has_many :book_invs
has_many :books,:through => :book_invs
belongs_to :store
end
