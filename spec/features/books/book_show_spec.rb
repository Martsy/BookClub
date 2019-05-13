# coding: utf-8
require 'rails_helper'

RSpec.describe 'When visiting a books show page' do

before :each do
    @review_1, @review_2  = create_list(:review, 2,:same_book)
  @book = Book.first
    visit book_path(@book.id)
  end

  it "should show book info" do
    within "#book-#{@book.id}" do
      expect(page).to have_content(@book.title)
      expect(page).to have_content("#{"⭐" * @book.average_rating.to_i}")
      expect(page).to have_content("pages: #{@book.pages}")
      expect(page).to have_content("by: #{@book.authors.pluck(:name).join(", ")}")
      expect(page).to have_content("published: #{@book.year_published}")
      expect(find("img")[:src]).to eq(@book.book_cover)
    end
  end

  it "should display book review" do
    Review.all.each do |review|
      within "#review-#{review.id}" do
        expect(page).to have_content("#{review.text}")
        expect(page).to have_content("#{review.user.name}")
        expect(page).to have_content("Rating: #{review.rating}")
      end
    end
  end

  it "should show top 3 rating for a book" do

  end

  it "should show a bottom 3 rating for a book" do

  end
end

  
