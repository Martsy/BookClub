require 'rails_helper'

RSpec.describe "when visiting a book index page" do

  before :each do
    book_1 = create(:book)
    book_1.authors << create(:author)
    book_1.authors << create(:author)

    visit books_path
  end


  it "should show book  info" do
    Book.all.each do |book|
      within "#book-#{book.id}" do
        expect(page).to have_content(book.title)
        expect(page).to have_content(book.average_rating)
        expect(page).to have_content(book.number_of_reviews)
        expect(page).to have_content(book.pages)
        expect(page).to have_content(book.authors.pluck(:name).join(", "))
        expect(page).to have_content(book.year_published)
        expect(find("img")[:src]).to eq(book.book_cover)
      end
    end
  end
end
