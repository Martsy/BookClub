require 'rails_helper'

RSpec.describe "when visiting a book index page" do

  before :each do
    book_1 = create(:book)
    book_1.authors << create(:author)
    book_1.authors << create(:author)
  end

  it "should show book  info" do
    visit  books_path

    Book.all.each do |book|
      expect(page).to have_content(book.title)
      expect(page).to have_content(book.pages)
      expect(page).to have_content(book.authors.pluck(:name).join(", "))
      expect(page).to have_content(book.year_published)

    end
  end
end
