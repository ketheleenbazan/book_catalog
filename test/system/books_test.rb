require "application_system_test_case"

class BooksTest < ApplicationSystemTestCase
  setup do
    @book = books(:one)  #loading a fixture book for reuse
  end

  test "visiting the index" do
    visit books_url
    assert_selector "h1", text: "Books"  #confirm that the page header shows
  end

  test "should create book" do
    visit books_url
    click_on "New book"

    #fill in the form with fixture data
    fill_in "Author", with: @book.author
    fill_in "Genre", with: @book.genre
    fill_in "Published on", with: @book.published_on
    fill_in "Title", with: @book.title
    click_on "Create Book"

    #after submission, should confirm success
    assert_text "Book was successfully created"
    click_on "Back"
  end

  test "should update Book" do
    visit book_url(@book)
    click_on "Edit this book", match: :first

    #update fields with the same data (basic test)
    fill_in "Author", with: @book.author
    fill_in "Genre", with: @book.genre
    fill_in "Published on", with: @book.published_on
    fill_in "Title", with: @book.title
    click_on "Update Book"

    assert_text "Book was successfully updated"
    click_on "Back"
  end

  test "should destroy Book" do
    visit book_url(@book)
    click_on "Destroy this book", match: :first

    # confirm that the deletion message shows
    assert_text "Book was successfully deleted"
  end
end
