class ComicBooksController < ApplicationController
  skip_before_action :verify_authenticity_token

  before_action :set_comic_book, only: [:show, :edit, :update, :destroy]

  # GET /comic_books
  # GET /comic_books.json
  def index
    @comic_books = ComicBook.all
  end

  # GET /comic_books/1
  # GET /comic_books/1.json
  def show
  end

  # GET /comic_books/new
  def new
    @comic_book = ComicBook.new
  end

  # GET /comic_books/1/edit
  def edit
  end

  # POST /comic_books
  # POST /comic_books.json
  def create
    @comic_book = ComicBook.new(comic_book_params)

    respond_to do |format|
      if @comic_book.save
        format.html { redirect_to @comic_book, notice: 'Comic book was successfully created.' }
        format.json { render :show, status: :created, location: @comic_book }
      else
        format.html { render :new }
        format.json { render json: @comic_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comic_books/1
  # PATCH/PUT /comic_books/1.json
  def update
    respond_to do |format|
      if @comic_book.update(comic_book_params)
        format.html { redirect_to @comic_book, notice: 'Comic book was successfully updated.' }
        format.json { render :show, status: :ok, location: @comic_book }
      else
        format.html { render :edit }
        format.json { render json: @comic_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comic_books/1
  # DELETE /comic_books/1.json
  def destroy
    @comic_book.destroy
    respond_to do |format|
      format.html { redirect_to comic_books_url, notice: 'Comic book was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comic_book
      @comic_book = ComicBook.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comic_book_params
      params.require(:comic_book).permit(:name, :author, :description)
    end
end
