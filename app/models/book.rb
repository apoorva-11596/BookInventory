class Book < ActiveRecord::Base
has_many :book_invs
has_many :inventories, :through  => :book_invs
end
