class BooksController < ApplicationController
  #authentication required for all the actions
  before_action :authenticate_user!

  #set @book for specific actions
  before_action :set_book, only: %i[show edit update destroy]

  #GET /books
  def index
    @books = current_user.books #list all books for the current user
  end

  #GET /books/:id
  def show #display book details
  end

  #GET /books/new
  def new
    @book = Book.new #initialize new book
  end

  #GET /books/:id/edit
  def edit
    #edit existing book
  end

  #POST /books
  def create
    @book = current_user.books.build(book_params) #bvuild new book with params

    if @book.save
      redirect_to @book, notice: "📘 Book was successfully created."
    else
      render :new, status: :unprocessable_entity #show errors
    end
  end

  #PATCH/PUT /books/:id
  def update
    if @book.update(book_params)
      redirect_to @book, notice: "✏️ Book was successfully updated."
    else
      render :edit, status: :unprocessable_entity #show errors
    end
  end

  #DELETE /books/:id
  def destroy
    @book.destroy!  #delete the book from the database
    redirect_to books_path, status: :see_other, notice: "🗑️ Book was successfully deleted."
  end

  private

    #this to set @book for show, edit, update, destroy
    def set_book
      @book = current_user.books.find(params[:id])
    end

    #sanitize book parameters
    def book_params
      params.require(:book).permit(:title, :author, :genre, :published_on)
    end
end
