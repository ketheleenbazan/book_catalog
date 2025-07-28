require "test_helper"

class BooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    # load a sample book from fixtures (test/fixtures/books.yml)
    @book = books(:one)
  end

  test "should get index" do
    get books_url
    assert_response :success  # expect the index page to load successfully
  end

  test "should get new" do
    get new_book_url
    assert_response :success  # expect the form page for a new book
  end

  test "should create book" do
    # creating a new book should increase the count in the database
    assert_difference("Book.count") do
      post books_url, params: { book: { author: @book.author, genre: @book.genre, published_on: @book.published_on, title: @book.title } }
    end

    #after creation, should redirect to the new book's page
    assert_redirected_to book_url(Book.last)
  end

  test "should show book" do
    get book_url(@book)
    assert_response :success  #expect to see book details
  end

  test "should get edit" do
    get edit_book_url(@book)
    assert_response :success  #expect to see edit form
  end

  test "should update book" do
    patch book_url(@book), params: { book: { author: @book.author, genre: @book.genre, published_on: @book.published_on, title: @book.title } }
    assert_redirected_to book_url(@book)  #after update, redirect to the book details page
  end

  test "should destroy book" do
    #deleting should reduce Book count by 1
    assert_difference("Book.count", -1) do
      delete book_url(@book)
    end

    #after deletion, should redirect back to index
    assert_redirected_to books_url
  end
end
