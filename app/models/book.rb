class Book < ApplicationRecord
  #each book belongs to a user and this creates a relationship between the books table and the users table
  belongs_to :user

  #this validation is to ensure a title is always provided when creating or updating a book
  validates :title, presence: true

  #and this validation to make sure the author field is not left blank
  validates :author, presence: true
end
