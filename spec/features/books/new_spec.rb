require 'rails_helper'

# RSpec.describe 'creating a new book' do
#   it 'can create a book' do
#     new_book = 'Rails on Ruby'
#     visit '/books/new'
#
#     fill_in :book_title, with: new_book
#     fill_in :book_length, with: pages
#     fill_in :book_year_published, with: year_published
#     click_on 'Create Book'
#
#     new_book = Book.last
#
#     expect(current_path).to eq(book_path(new_book))
#     expect(page).to have_content(title)
#     expect(page).to have_content(pages)
#     expect(page).to have_content(year_published)
#     expect(page).to have_content(author.name)
#   end
# end

RSpec.describe 'As a visitor' do
  describe 'when I visit the new book form page' do
    it 'I can create a new book' do
      visit '/books/new'

      fill_in 'Title', with: 'Rails on Ruby'
      fill_in 'Author', with: 'Chad Smith'
      fill_in 'Pages', with: 521
      click_on 'Create Book'

      new_book = Book.last

      # expect(current_path).to eq("/books/#{new_book.id}")
      expect(page).to_content(new_book)

    end
  end
end

# User Story 12
# Add a New Book to the System

# As a Visitor,
# When I visit the book index page,
# I see a link that allows me to add a new book.
# When I click that link, I am taken to a new book path.
# I can add a new book through a form, including the book's
# title, author(s), and number of pages in the book.
# When I submit the form, I am taken to that book's show page.
#
# Book titles should be converted to Title Case before saving.
# Book titles should be unique within the system.
# For authors, a comma-separated list of names should be entered,
# and each author will be added to the database.
# Authors added to the database should have their names converted
# to Title Case.
# Author Names should be unique within the system.
