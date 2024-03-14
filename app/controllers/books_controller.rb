class BooksController < ApplicationController
  def index
    @book = Book.new
    @books = Book.all.order(id: :asc)
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to book_path(@book.id)
      flash[:notice] = "Book was successfully Created."
    else
      @books = Book.all.order(id: :asc)
      render :index
    end
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    book=Book.find(params[:id])
    if book.update(book_params)
      flash[:notice]="Book was successfully updated."
      redirect_to book_path(book.id)
    else
      @book=Book.find(params[:id])
      @book.update(book_params)
      render :edit
    end
  end


  def destroy
    book = Book.find(params[:id])  # データ（レコード）を1件取得
    book.destroy  # データ（レコード）を削除
    redirect_to '/books'
    flash[:notice] = "Book was successfully destroyed."
  end


    private
  # ストロングパラメータ
  def book_params
    params.require(:book).permit(:title, :body)
  end

end