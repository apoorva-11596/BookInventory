json.extract! book, :id, :title, :publisher, :edition, :author_id, :created_at, :updated_at
json.url book_url(book, format: :json)
