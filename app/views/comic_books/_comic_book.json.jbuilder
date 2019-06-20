json.extract! comic_book, :id, :name, :author, :description, :created_at, :updated_at
json.url comic_book_url(comic_book, format: :json)
