# coding: utf-8
require 'rails_helper'

RSpec.describe 'When visiting an author show page' do

  before :each do
    create_list(:review, 4,:same_author)
    @author = Author.first
    Book.all.each { |book| book.authors << create(:author) }
    visit author_path(@author)
  end

  it "should have links for all the books" do
    Book.all.each do |book|
      expect(page).to have_link(book.title)
      expect(current_path).to eq(author_path(@author))

      click_link(book.title)
      expect(current_path).to eq(book_path(book))
      visit author_path(@author)
    end

  end

  it "should have links for all the authors on the page" do
    Book.all.each do |book|
      book.authors.each do |author|
        next if author.name == @author.name

        expect(page).to have_link(author.name)
        expect(current_path).to eq(author_path(@author))

        click_link(author.name)
        expect(current_path).to eq(author_path(author))

        visit author_path(@author)
      end
    end

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

  it "should be able to delete a author" do
    expect(current_path).to eq(author_path(@author))
    expect(page).to have_link('Delete Author')
    click_link("Delete Author")
    expect(current_path).to_not eq(author_path(@author))
    expect(current_path).to eq(books_path)
    expect(page).to_not have_content(@author.name)
  end
end
