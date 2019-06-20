require 'test_helper'

class ComicBooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @comic_book = comic_books(:one)
  end

  test "should get index" do
    get comic_books_url
    assert_response :success
  end

  test "should get new" do
    get new_comic_book_url
    assert_response :success
  end

  test "should create comic_book" do
    assert_difference('ComicBook.count') do
      post comic_books_url, params: { comic_book: { author: @comic_book.author, description: @comic_book.description, name: @comic_book.name } }
    end

    assert_redirected_to comic_book_url(ComicBook.last)
  end

  test "should show comic_book" do
    get comic_book_url(@comic_book)
    assert_response :success
  end

  test "should get edit" do
    get edit_comic_book_url(@comic_book)
    assert_response :success
  end

  test "should update comic_book" do
    patch comic_book_url(@comic_book), params: { comic_book: { author: @comic_book.author, description: @comic_book.description, name: @comic_book.name } }
    assert_redirected_to comic_book_url(@comic_book)
  end

  test "should destroy comic_book" do
    assert_difference('ComicBook.count', -1) do
      delete comic_book_url(@comic_book)
    end

    assert_redirected_to comic_books_url
  end
end
