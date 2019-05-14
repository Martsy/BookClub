require 'rails_helper'

RSpec.describe 'new book', type: :feature do
  before :each do
    @title = 'Ruby On Rails'
    @pages = 523
    @year_published = 2019
    @book_cover = 'url'
    @authors = 'chAd, smITh, BOB, fRED'
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
        expect(page).to have_content('Book cover')
      end
    end
  end

  describe 'As a visitor' do
    describe 'when I visit the new book form page' do
      it 'I can create a new book' do
        visit new_book_path

        fill_in :book_title, with: @title
        fill_in :book_authors, with: @authors
        fill_in :book_pages, with: @pages
        fill_in :book_year_published, with: @year_published

        click_button 'Create Book'

        new_book = Book.last
        expect(current_path).to eq(book_path(new_book))
        expect(page).to have_content(@title)
        expect(page).to have_content(@pages)
      end
    end
  end

  it 'adds a new book to author or adds a new author' do
    visit new_book_path

    fill_in :book_title, with: @title
    fill_in :book_pages, with: @pages
    fill_in :book_authors, with: @authors
    fill_in :book_year_published, with: @year_published
    fill_in :book_book_cover, with: @book_cover

    click_button 'Create Book'

    expect(Author.count).to eq(@authors.split.count)
    expect(Book.first.authors.count).to eq(4)
    expect(Author.first.books.count).to eq(1)
  end
end
