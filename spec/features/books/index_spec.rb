# coding: utf-8
require 'rails_helper'

RSpec.describe "when visiting a book index page" do

  before :each do
    book_1 = create(:book)
    book_1.authors << create(:author)
    book_1.authors << create(:author)

    book_2 = create(:book)
    book_2.authors << create(:author)

    User.create(name: "Joe").reviews.create(book: book_1, text: "Very good book", rating: 8)

    visit books_path
  end


  it "should show book  info" do
    Book.all.each do |book|
      within "#book-#{book.id}" do
        expect(page).to have_content(book.title)
        expect(page).to have_content("#{"⭐" * book.average_rating.to_i}")
        expect(page).to have_content("#{book.number_of_reviews}")
        expect(page).to have_content("pages: #{book.pages}")
        expect(page).to have_content("by: #{book.authors.pluck(:name).join(", ")}")
        expect(page).to have_content("published: #{book.year_published}")
        expect(find("img")[:src]).to eq(book.book_cover)
      end
    end
  end
end
