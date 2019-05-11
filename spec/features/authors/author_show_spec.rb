# coding: utf-8
require 'rails_helper'

RSpec.describe 'When visiting an author show page' do

  before :each do
    create_list(:review, 4,:same_author)
    @author = Author.first
    visit author_path(@author.id)
  end

  it "should show book info" do
    @author.books.each do |book|
      within "#book-#{book.id}" do
        expect(page).to have_content(book.title)
        expect(page).to have_content("#{"⭐" * book.average_rating.to_i}")
        expect(page).to have_content("pages: #{book.pages}")
        expect(page).to_not have_content(@author.name)
        expect(page).to have_content("published: #{book.year_published}")
        expect(find("img")[:src]).to eq(book.book_cover)
      end
    end
  end

  it "should display book review" do
    @author.books.each do |book| 
      review = book.highest_review
      within "#review-#{review.id}" do
        expect(page).to have_content("#{review.text}")
        expect(page).to have_content("#{review.user.name}")
        expect(page).to have_content("Rating: #{review.rating}")
      end
    end
  end
end
