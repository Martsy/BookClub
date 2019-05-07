require 'rails_helper'

RSpec.describe 'new book', type: :feature do
  before :each do
    @title = 'Ruby On Rails'
    @pages = 523
    @year_published = 2019
    @book_cover = 'url'
    @authors = 'Chad Smith'
  end

  describe 'As a visitor' do
    describe 'when I visit the book index page' do
      it 'I see a link to create a new book' do
        visit books_path

        click_on 'Add Book'

        expect(current_path).to eq(new_book_path)

        expect(page).to have_content('Title')
        expect(page).to have_content('Author')
        expect(page).to have_content('Pages')
        expect(page).to have_content('Cover')
      end
    end
  end

  describe 'As a visitor' do
    describe 'when I visit the new book form page' do
      it 'I can create a new book' do
        visit new_book_path

        fill_in 'Book[title]', with: @title
        fill_in 'Book[author]', with: @author
        fill_in 'Book[pages]', with: @pages

        click_button 'Create Book'

        new_book = Book.last

        expect(current_path).to eq(book_path(book))
        expect(book.title).to eq(@title)
        expect(book.pages).to eq(@pages)
      end
    end
  end

  it 'adds a new book to author or adds a new author' do
    author_1 = Author.create(name: 'Chad Smith')

    visit new_book_path

    fill_in 'book[title]', with: @title
    fill_in 'book[pages]', with: @pages
    fill_in 'book[authors]', with: @authors
    fill_in 'book[year]', with: @year_published
    fill_in 'book[cover]', with: @book_cover

    click_button 'Create Book'

    expect(Author.count).to eq(1)
    expect(Author.first.books.count).to eq(1)
  end
end
