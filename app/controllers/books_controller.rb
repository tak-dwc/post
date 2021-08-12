class BooksController < ApplicationController
  
  def index
    @books = Book.all
    @book_new = Book.new
    
  end

  def show
    @book = Book.find(params[:id])
    @book_new = Book.new
    
  end

  def create
    @book_new = Book.new(book_params)
  if @book_new.save
  redirect_to book_path(@book.id)
  else
  render :index
  end
  end

  def edit
  end

  def update
  end

  def destroy
  end
  
  private
  def book_params
   params.require(:book).permit(:title,:body,:user_id)
  end   
end
