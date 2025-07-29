class BooksController < ApplicationController
  #authentication required for all actions
  before_action :authenticate_user!

  #set @book for show/edit/update/destroy actions
  before_action :set_book, only: %i[show edit update destroy]

  #GET /books
  def index
    @filter_params = params.permit(:title, :author, :genre) #sanitize filter parameters

    @books = current_user.books #start with all books for the current user

    #apply filters
    @books = @books.where("title LIKE ?", "%#{@filter_params[:title]}%") if @filter_params[:title].present?
    @books = @books.where("author LIKE ?", "%#{@filter_params[:author]}%") if @filter_params[:author].present?
    @books = @books.where("genre LIKE ?", "%#{@filter_params[:genre]}%") if @filter_params[:genre].present?

    @books = @books.page(params[:page]).per(5) #paginate the filtered books
  end

  #GET /books/:id
  def show
    #Display book details
  end

  #GET /books/new
  def new
    @book = Book.new # Initialize new book
  end

  #GET /books/:id/edit
  def edit
    #edit existing book
  end

  #POST /books
  def create
    @book = current_user.books.build(book_params) #build new book with params

    if @book.save
      redirect_to @book, notice: "📘 Book was successfully created." #success!
    else
      render :new, status: :unprocessable_entity #show errors
    end
  end

  #PATCH/PUT /books/:id
  def update
    if @book.update(book_params)
      redirect_to @book, notice: "✏️ Book was successfully updated." #Success!
    else
      render :edit, status: :unprocessable_entity #show errors
    end
  end

  #DELETE /books/:id
  def destroy
    @book.destroy! #delete the book
    redirect_to books_path, status: :see_other, notice: "🗑️ Book was successfully deleted." #back to books list
  end

  private

    #set @book for show, edit, update, destroy actions
    def set_book
      @book = current_user.books.find(params[:id]) #find user's book by ID
    end

    #sanitize book parameters
    def book_params
      params.require(:book).permit(:title, :author, :genre, :published_on) #allowlist attributes
    end
end
