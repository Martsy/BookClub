require 'rails_helper'

RSpec.describe "creating a new book" do
  it "can create a book" do 
    new_book = "Rails on Ruby"
    visit "/books/new"

    fill_in :book_title, with: new_book
    fill_in :book_length, with: pages
    fill_in :book_year_published, with: year_published

    click_on "Create Book"

    new_book = Book.last

    expect(current_path).to eq(book_path(new_book))
    expect(page).to have_content(title)
    expect(page).to have_content(pages)
    expect(page).to have_content(year_published)
    expect(page).to have_content(author.name)
  end
end