json.extract! book, :id, :title, :author, :genre, :published_on, :created_at, :updated_at
json.url book_url(book, format: :json)
