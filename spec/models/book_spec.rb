require 'rails_helper'

RSpec.describe Book, type: :model do
  # create a test user for associating with books
  let(:user) { User.create(email: "test@example.com", password: "password") }

  it "is valid with valid attributes" do
    #a book should be valid if it has a title, author, and user
    book = Book.new(title: "Harry Potter", author: "J. K. Rowling", user: user)
    expect(book).to be_valid
  end

  it "is not valid without a title" do
    # Missing title should make the book invalid
    book = Book.new(author: "J. K. Rowling", user: user)
    expect(book).to_not be_valid
  end

  it "is not valid without an author" do
    # missing author should make the book invalid
    book = Book.new(title: "Harry Potter", user: user)
    expect(book).to_not be_valid
  end

  it "is not valid with a blank title" do
    # nil title is treated as blank → invalid
    book = Book.new(title: nil, author: "J. K. Rowling", user: user)
    expect(book).to_not be_valid
  end

  it "is not valid with a blank author" do
    # bil author should make it invalid
    book = Book.new(title: "Harry Potter", author: nil, user: user)
    expect(book).to_not be_valid
  end
end

# ======



