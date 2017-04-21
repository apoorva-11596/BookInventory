class StoresController < ApplicationController

	def dashboard
		#byebug
		@books = current_store.inventory.books
	end

	def index
		@store = Store.all
	end

	def sell
	end

	def do_sell
		book = Book.where(title: params[:book_name])
		if book.size > 1
			redirect_to sell_path, notice: "There are more than two books of this name"
		else 
		book = book.first
		book_inv = BookInv.find_by_book_id_and_inventory_id(book.id,current_store.inventory.id)
		#byebug
	
			book_inv.copies= book_inv.copies - params[:book_copies].to_i
			book_inv.save

		if(book_inv.copies <0)
			book_inv.delete
		end

		redirect_to '/dashboard'
		end
	end

	def addcopies
		#byebug
		book_inv = BookInv.find_by_book_id_and_inventory_id(params[:book_id],current_store.inventory.id)
		book_inv.copies = book_inv.copies + 1
		book_inv.save
		redirect_to '/dashboard'
	end
end