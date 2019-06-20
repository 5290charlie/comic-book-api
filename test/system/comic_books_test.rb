require "application_system_test_case"

class ComicBooksTest < ApplicationSystemTestCase
  setup do
    @comic_book = comic_books(:one)
  end

  test "visiting the index" do
    visit comic_books_url
    assert_selector "h1", text: "Comic Books"
  end

  test "creating a Comic book" do
    visit comic_books_url
    click_on "New Comic Book"

    fill_in "Author", with: @comic_book.author
    fill_in "Description", with: @comic_book.description
    fill_in "Name", with: @comic_book.name
    click_on "Create Comic book"

    assert_text "Comic book was successfully created"
    click_on "Back"
  end

  test "updating a Comic book" do
    visit comic_books_url
    click_on "Edit", match: :first

    fill_in "Author", with: @comic_book.author
    fill_in "Description", with: @comic_book.description
    fill_in "Name", with: @comic_book.name
    click_on "Update Comic book"

    assert_text "Comic book was successfully updated"
    click_on "Back"
  end

  test "destroying a Comic book" do
    visit comic_books_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Comic book was successfully destroyed"
  end
end
