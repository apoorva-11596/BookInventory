json.extract! inventory, :id, :book_id, :num_of_copies, :price, :store_id, :created_at, :updated_at
json.url inventory_url(inventory, format: :json)
