# coding: utf-8
require 'rails_helper'

RSpec.describe "when visiting a book index page" do

  before :each do
    @book_1 = create(:book, pages: 200)
    @book_2 = create(:book, pages: 100)
    @book_3 = create(:book, pages: 400)

    @author_1 = create(:author)
    @author_2 = create(:author)
    @author_3 = create(:author)

    @user_1 = create(:user)
    @user_2 = create(:user)
    @user_3 = create(:user)

    @book_1.authors << @author_1
    @book_1.authors << @author_2

    @book_2.authors << @author_1

    @book_1.reviews.create(user: @user_1, text: "Very good book", rating: 8)
    @book_1.reviews.create(user: @user_2, text: "What did I just read", rating: 4)

    @book_2.reviews.create(user: @user_3, text: "Meh book", rating: 7)

    
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

  it "should return Anonymous if book has no author" do
    expect(@book_3.get_authors.join(", ")).to eq("Anonymous")
  end

  it "should display default text if book has no reviews" do
    within "#book-#{@book_3.id}" do
      expect(page).to_not have_content("⭐" )
      expect(page).to have_content(" 0 user reviews")
    end
  end

  it "should be able to sort books by rating" do
      expect(page).to have_link("rating-ascending")
      click_link("rating-ascending")
      expect(@book_1.title).to appear_before(@book_2.title)

      expect(page).to have_link("rating-descending")
      click_link("rating-descending")
      expect(@book_2.title).to appear_before(@book_1.title)
  end
  
  it "should be able to sort books by reviews" do
    expect(page).to have_link("reviews-ascending")
    click_link("reviews-ascending")
    expect(@book_2.title).to appear_before(@book_1.title)

    expect(page).to have_link("reviews-descending")
    click_link("reviews-descending")
    expect(@book_1.title).to appear_before(@book_2.title)
  end

  it "should be able to sort books by pages" do
    expect(page).to have_link("pages-ascending")
    click_link("pages-ascending")
    expect(@book_2.title).to appear_before(@book_1.title)

    expect(page).to have_link("pages-ascending")
    click_link("pages-descending")
    expect(@book_1.title).to appear_before(@book_2.title)
  end

end
